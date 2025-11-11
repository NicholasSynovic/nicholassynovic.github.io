I recently found out about `Tailscale <https://tailscale.com/>`__ from
the `Level1Tech's interview with its founder
<https://www.youtube.com/watch?v=UyczOQTx5Gg>`__. After trying it out, I
can say that I am more than satisfied with its performance, ease of use,
and ability to network all of my devices together across different
intranets.

As someone who prefers to configure their computer using
infrastructure-as-code (IaC) practices, I decided to write an Ansible
play for installing Tailscale. The following is the play that I created:

.. code:: yaml

   - name: Install Tailscale
     hosts: myhosts
     become: true
     tasks:
       - name: Download Tailscale GPG Key
         ansible.builtin.uri:
           dest: /usr/share/keyrings/tailscale-archive-keyring.gpg
           url: https://pkgs.tailscale.com/stable/ubuntu/jammy.noarmor.gpg

       - name: Add Tailscale repository
         ansible.builtin.uri:
           dest: /etc/apt/sources.list.d/tailscale.list
           url: https://pkgs.tailscale.com/stable/ubuntu/jammy.tailscale-keyring.list

       - name: Install Tailscale
         ansible.builtin.apt:
           name: tailscale
           update_cache: true
           state: present

This play is my attempt at a direct translation from the `Tailscale
download instructions <https://tailscale.com/download/linux>`__. For
those who are more familiar with Ansible, let me know how I can improve
upon this play.

Thanks!
