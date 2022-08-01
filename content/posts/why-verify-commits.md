---
title: Why Sign Commits?
description: Why you should start signing your Git commits today
summary: Why you should start signing your Git commits today

categories: [git, github, huggingface, security]
citations: [https://www.youtube.com/watch?v=5f5ni0zpl5E, https://github.com/, https://huggingface.co/,
  https://withblue.ink/2020/05/17/how-and-why-to-sign-git-commits.html]

draft: false

date: 2022-08-01T14:32:39-05:00
featured_image: ''
include_toc: true
markup: md
outputs: []
show_comments: false
toc: true
show_reading_time: true
---

# Why Sign Commits?

> Why you should start signing your Git commits **today**.

______________________________________________________________________

## About

You are unique.

You can't be replaced or replicated. Your identiy as a person is irreplacable.

But you can be immitated. And identity theft is not a joke \[0\].

But what does that mean to a *developer*? Sure, if someone steals your identity
in the real world (god forbid), there are countless illegal and illicit
activities that the theif can do under your name, and you would take the blame!
But if someone signs off on a commit with your name and email address, so what
right? You could petition to the owner of the repository to roll back the
commit. And there is probably other security measures in place on online VCS
platforms like GitHub \[1\] and HuggingFace \[2\] to prevent this. Right?

I'm sorry to say, but that is wrong.

## The Downfall

As alluded to before, a `git` repository's history is mutable. Meaning that I
can roll back to any previous commit at any point and resume development from
there. Therefore, if someone signs off on a commit with my credentials, a
rollback can be issued and the commit removed from the history. The rollback
therefore addresses the problem.

But what if that doesn't happen? Or it happens so frequently that several
rollbacks need to be made? Or if your legitimate commits get intermingled with
the malicious ones?

In order:

If a rollback doesn't occur, a repository could be built upon malicious code.
Even if historically the code that was written had a history of being safe, all
code after the attacker's commit injection can no longer be considered safe for
use, distribution, or reuse. And if the malicous commit is never detected, a
legitimate software product could be built upon a malicous process that can and
will undermine future collaboration as trust in the code breaks down.

If several rollbacks need to be made, newer features have the potential to be
lost. Bug fixes, documentation, and other artificats could be lost as well if
backups aren't made. The team that worked on the features could become upset and
frustrated that they have to spend time reimplementing features that they've
already done. In other words, should enough rollbacks be ordered to occur, the
team cohesion and function will start to suffer.

And if your own legitimate commits get intermingled with the malicous ones,
individuals will start to lose trust in your own work. Without some form of
verification or unique ID, it is currently not possible to distinguish between
two seperate authors of a commit if they contribute under the same name. And
without trust in work, your relationship to the team and the project will surely
suffer.

The lack of trust or cohesion within a team, or tasking a team to reimplement
features out of security concerns can be the downfall of a project. Particularly
if this issue becomes unmanagable.

## The Solutions

I offer two solutions here:

1. GPG sign your commits
2. Have someone on your team really good at `git`

The first of these solutions is the easiest to implement. You can create a GPG
key and link your local `git` account to it via the `~/.gitconfig` file.
Furthermore, you can set in your `~/.gitconfig` file to always sign commits as
well. By doing both of these steps, you can sign your commits locally with a GPG
key and have proof of identification through it. In addition, if you push your
changes to a service like GitHub or HuggingFace and have synced your GPG key
with those services, all of your signed commits will have a *verified* tag next
to them. This allows users of these sites to see who is truely who.

The second solution is to hire someone who is your "`git` master" who can undo
any changes regardless of complexity asynchonously of the teams progress.
However, I would think that they would also encourage solution 1 to be
implemented as well upon hiring.

## However...

This won't stop malicous actors from pretending to be you. But by signing
commits, you give yourself the tools necessary to spot fraud in your project's
`git` history and reduce the probability of attacks targetting the `git`
history.

For further reading, please read this article \[3\] for further information.

Stay safe out there.

______________________________________________________________________

## Citations
