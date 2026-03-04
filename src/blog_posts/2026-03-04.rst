:blogpost: true
:date: March 4, 2026
:category: Blog Post
:tags: System Administration, HPC, 03-04-2026
:nocomments:

###########################################################
*Troubleshooting SSH and LDAP Desync on a Research Cluster*
###########################################################

:bdg-primary:`Blog Post` :bdg-primary-line:`System Administration` :bdg-primary-line:`HPC`

.. note::
   This is the first in a series of blog posts that document my experience
   fixing, maintaining, up and downgrading, and eventually improving my
   department's research cluster computer.

**************************
The Legend of ``dijkstra``
**************************

Within my department, we have a piece of "old reliable" infrastructure: a
high performance cluster (honestly, more medium-performance these days) lovingly
named ``dijkstra``. Since at least 2019, ``dijkstra`` has survived its fair
share of hardware failures, software rot, and networking troubles.

It has served as the ultimate sandbox for our department, touched by everyone
from cybersecurity students and AI researchers to database engineers. It is one
of those classic systems that everyone depends on, yet is simultaneously the
primary reason most research groups eventually give up and purchase their own
private clusters.

The Fledgling Phoenix
=====================

Today, ``dijkstra`` is attempting a "fledgling phoenix" act --- it is trying to
be reborn. The problem is that the core system functionality has deteriorated to
the point where even the simplest task, like logging in, has become a multi-hour
troubleshooting ordeal. It has reached a level of technical debt that almost no
one in the department is willing to touch.

This, of course, made it the perfect time for me to jump in. My goal isn't
**just** to fix the machine, but to document the process for the sake of the
administrators who will eventually inherit this system after me.

Enter The New Guy
=================

While I'm not entirely new to cluster management, my background has mostly been
in controlled or "lab" environments. In high school, I was fortunate enough to
work with physical systems managing remote storage, VoIP protocols, and
district wide databases. Later, I built and deployed several Raspberry Pi and
NVIDIA Jetson Nano clusters for computer vision research. I've even had the
privilege of interning at Argonne National Lab, leveraging super computers
including ``polaris``, ``sophia``, and ``crux``.

However, there is a massive difference between using a supercomputer and
rescuing a production system. Aside from small side projects, I've never been
the one responsible for an in production environment with active users.

``dijkstra`` is in dire need of maintenance, and it's being overhauled by
someone just starting to "cut their teeth" on production grade sysadmin work.
What could possibly go wrong?

***********************
Challenge 1: Let Me In!
***********************

Logging into ``dijkstra`` was the first challenge. In a typical cluster
architecture, users first ssh into a **Head Node** (the internet facing
gateway). From there, they should be able to hop into any of the internal
**Compute Nodes** to run their workloads.

The sheer act of logging into ``dijkstra`` was a challenge. While the head node,
the internet facing device that users initially ``ssh`` into, allowed for
users to login to it, all other nodes on the system were not accessible.

Well, all but two: the two newest GPU nodes that were installed on the system
did allow for users to ``ssh`` into them from the head node, but these are
already exceptions within the cluster. Their hardware and software
configurations differed so significantly from the legacy nodes that simply
"copy-pasting" their configurations was an unreliable, and likely dangerous,
solution.

Thankfully, I was able to login to all nodes as ``root`` via ``ssh``. A security
oversight for sure, but I am grateful that I was able to at least get access to
these compute nodes for testing solutions.

So this was my first task: needed to be able to authenticate at the head node
and then move freely to any other node in the system using my standard user
account, without being met by a brick wall of password prompts or
"Permission Denied" errors.

It Wasn't ``DNS``
=================

The very first step I took was to simply check that the ``/etc/hosts`` file
correctly referenced the node aliases on the head node. ``dijkstra`` uses this
file to provide aliases for all nodes in the system so that users do not need to
remember specific device host names or IP addresses when jumping between nodes.
If this file was tampered with, then it would make sense as to why I wasn't able
to ``ssh`` out of the login node to any of the compute nodes. Thankfully, the
file only had a typo bug which pointed two different IP addresses at the same
node which I was able to squash.

It Has To Be Slurm.. Right?
===========================

In a previous attempt to modernize ``dijkstra``, the department installed Slurm [1]_,
a workload manager designed to queue and schedule high-performance computing
jobs. To ensure the cluster remained stable, Slurm had been configured with a
strict "no-direct-entry" policy: users could only execute code on compute nodes
via a scheduled job, effectively blocking direct ssh access to prevent unmanaged
resource consumption.

At some point, Slurm was disabled for reasons unknown to me. However, because
the cluster's previous state was so restrictive, I assumed a "ghost"
configuration was still haunting the system. I suspected a lingering PAM
(Pluggable Authentication Module) [2]_ or a configuration flag was still enforcing
that "Slurm-only" access rule.

After a quick consultation with Google Gemini and a deep dive into the Slurm
documentation, I identified several candidate files that might be causing the
lockout. I took the aggressive step of stopping all remaining Slurm daemons and
temporarily moving the configuration files out of the system directories and
into my ``home`` folder.

The result? Nothing. Even with Slurm effectively erased from the active
environment, the compute nodes remained a black box.

This troubleshooting was complicated by a fundamental architectural hurdle:
Node Isolation. While the users' ``/home`` directories are shared across the
cluster via ``nfs`` (Network File System), the system configurations are not.
``dijkstra`` does not share a common system memory or a unified configuration
directory. If I changed a setting on the head node, it had zero effect on the
compute nodes. If I fixed a config on ``compute-node1``, ``compute-node2``
remained broken. Each node was its own island, requiring me to diagnose and
repair them one by one.

Maybe It's ``ssh``?
===================

Assuming that I had disabled Slurm correctly on the head and my testing compute
node, I then decided to diagnose if maybe my user config and system config for
the ``ssh`` client was incorrect. To cut to the chase, it was not. Additionally,
on the compute node the ``sshd_config`` file (the one used to configure the
``ssh`` server and not the client) was also correct.

This is where I truly got stuck for a minute. If it wasn't DNS, PAM, or an
``ssh`` config, I didn't really know where to go next. It wasn't until I decided
to ``ssh`` back into the compute node with my standard user account with verbose
output enabled (``ssh -v``) that I began to have some clarity as to what the
actual problem is.

To be frank, this is one hundred percent where I should've started. Actually
reviewing the logs and the connection status as the client and server
communicate would inform me that DNS was functioning correctly (for all but one
node), PAM wasn't blocking traffic, and that my ``ssh`` configs on the client
and server were correct enough to not be causing this issue. But hindsight is
20/20, so I'll just remember this in the future.
I
**********************
It's an Identity Issue
**********************

This log entry shifted the entire investigation. The compute node wasn't
rejecting my user key; it was rejecting my *existence*. In a cluster like
``dijkstra``, nodes don't keep local lists of users; they consult a central
"phonebook" using **LDAP** (Lightweight Directory Access Protocol).

The LDAP Bouncer Analogy
========================

To understand why this failed, think of the login process as a club:

- The ``ssh`` Key is your valid ticket to the show.
- **LDAP** is the bouncer at the door with the guest list.
- **The Issue**: If the bouncer can't open the guest list because he has
  the wrong password to the safe, he doesn't care how valid your ticket
  is. He doesn't even know you're supposed to be on the list.

Configuration Drift As The Root Of All Evils
============================================

Upon comparing the configuration files across the cluster, I discovered
that the compute nodes LDAP configuration had drifted away from what was
expected. While the head node used the current "bind password" to talk to the
LDAP server, my testing compute node was still configured with an old, incorrect
password from a previous era of system.

Because of this mismatch, the compute node couldn't verify my identity, deemed
me an "invalid user," and ignored my ``ssh`` keys entirely.

******************************************
Manual Syncing To Keep ``dijkstra`` Afloat
******************************************

Since we were not yet using automated configuration management like
Ansible, I had to resolve this manually:

1. Logged into the **root** account to bypass user-level LDAP issues.
2. Updated LDAP configuration file on the faulty nodes with the correct
   password.
3. Restarted the LDAP daemon.
4. Verified the fix by logging in with a standard user account—success!

*********
Takeaways
*********

1. **Log Veracity is King:** Client-side logs (``ssh -v``) are helpful,
   but the **target** node's logs  are the final authority.

2. **Think in Tiers:** Start troubleshooting at the local level (your
   account/config), scale up to the system level (SSH config), and
   finally look at global identity management (LDAP/AD).

3. **Automate to Avoid Drift:** Manual configurations inevitably drift.
   We are now moving toward an **Ansible** based "Infrastructure as Code"
   approach to ensure every node in the cluster has the exact same
   software and configurations.

.. [1] https://slurm.schedmd.com/overview.html
.. [2] https://en.wikipedia.org/wiki/Pluggable_Authentication_Module
