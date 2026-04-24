:blogpost: true
:category: Blog Post
:tags: Software Engineering, Git, Security
:nocomments:

************************************
*Why Should You Sign Your Commits?*
************************************

:bdg-primary:`Blog Post` :bdg-primary-line:`Software Engineering` :bdg-primary-line:`Git` :bdg-primary-line:`Security`

*******
Preface
*******

I recently read this article [0] by Alessandro Segala about why I should sign my commits. I completely agree with, and would like to expand on, their work.

*************
Identity Theft
*************

Identity theft is not a joke [1].

The FTC, in their 2021 edition of the CSN Annual Data Book [2], reported that there were 1,434,676 reports of identity fraud in 2021.
This theft allows the perpetrator to commit acts of fraud in your name while reaping the benefits.
As developers, we not only have to protect our real-world identities from theft, but our digital ones as well.
While it is important to have strong and secure passwords, I'm not referring to your accounts as digital identities.
I'm instead talking about your contributions to open-source projects.

This article focuses on ``git`` [3] and online version control systems (VCSs) that implement ``git`` as their back end.

It is not only possible, but incredibly easy, to sign a commit under a different identity.
In addition, online VCSs will read the ``git`` commit history and, per commit, add the appropriate account information to the commit (assuming an account exists with the email address that is attached to the ``git`` repository).
This feature is meant to provide a user-friendly way of viewing ``git`` commits.
However, it also allows an attacker to take advantage of these tools and publish commits to a project under someone else's identity.

***************************************
The Dangers of Developer Identity Theft
***************************************

The biggest threat to a developer who doesn't sign their commits is the lack of trust a community can have in that developer.

A malicious attacker who signs off on infected, poorly written, or malformed commits and publishes them to a project can ruin a developer's relationship with a community.

A malicious attacker could publish commits that actively ruin existing features.
They could also introduce bugs into a repository under someone's name.

*******************
Benefits of Signing
*******************

To combat this, ``git`` allows individuals to sign their commits with a GPG [4] key.

This allows for a number of benefits:

#. Commits in the ``git`` history that are signed have metadata attached to them indicating that they're signed.
#. If the GPG key is published to an online VCS that supports this feature, a *verified* tag will be applied to commits that are signed and match a user's GPG key.
#. Developer identity can be confirmed by running checks against the public-facing key of a commit and a developer's private key.

**********
Conclusion
**********

Since reading [0], I have implemented commit signing for my projects going forward.
I also now require all group projects to have signed commits prior to acceptance.

Setting up signed commits was trivial, and there were plenty of guides [0] [5] [6] on how to do so.

I strongly encourage all developers to sign their commits in order to improve the verification of work done by legitimate developers, instead of allowing the work of thieves to proliferate throughout our community.
