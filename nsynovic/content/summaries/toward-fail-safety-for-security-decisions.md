---
title: A summary of Toward Fail Safety for Security Decisions by Trent Jaeger
description: Posted in IEEE Computing Edge, December 2022
summary: Posted in IEEE Computing Edge, December 2022

categories: [summary, magazine, article, from the editors]
citations: [https://doi.org/10.1109/MSEC.2021.3096614]

draft: false

date: 2023-02-19T13:39:57-06:00
featured_image: ''
include_toc: true
markup: md
outputs: []
show_comments: false
toc: false
show_reading_time: true
---

# A summary of *Toward Fail Safety for Security Decisions*

> Trent Jaeger IEEE Computing Edge, December 2022 DOI \[0\]

## Table of Contents

- [A summary of *Toward Fail Safety for Security Decisions*](#a-summary-of-toward-fail-safety-for-security-decisions)
  - [Table of Contents](#table-of-contents)
  - [Summary](#summary)
    - [Examples of How User Decisions Impact Security](#examples-of-how-user-decisions-impact-security)
    - [A Design Goal: Fail-Safe Decisions](#a-design-goal-fail-safe-decisions)
    - [Using Fail Safety Effectively](#using-fail-safety-effectively)
  - [Citations](#citations)

______________________________________________________________________

## Summary

Developers of technologies aim to automate security decisions on behalf of the
consumer. However, security decisions made by end users are often ad-hoc and
unguided. As researchers, we should figure out how to create systems that are
reduce vulnerabilities when poor manual choices are made.

### Examples of How User Decisions Impact Security

Mobile applications often request access to sensors on the device to operate.
However, it is often unclear as to why these applications want to utilize these
sensors. Additionally, by granting security access to malicious apps, it is
possible for the apps to modify core system functionality or compromise core
processes for their own gain.

Within the IoT space, often developers let the end users handle the security
permissions on their end. However, it is both the developers and the end-users
job to ensure that the devices are operating within in a secure environment.

### A Design Goal: Fail-Safe Decisions

We should have fail-safe defaults that expresses the permissions that a device
or application has rather than what it doesn't. In other words, return positive
feedback as to the what an application or device can do, rather than what it
can't.

To support this, applications need to help users make better decisions. This
could be done through supporting safe choices through the path of least
resistance. In other words, make it easy to secure an application and difficult
to disable security. However, it is difficult for programmers to decide what is
and isn't a safe decision.

### Using Fail Safety Effectively

If fail safety is implemented on a per device level, it won't be able to scale
to entire technology sectors. Therefore, best practices need to be developed in
order to allow fail-safety to grow.

However, as legacy applications did not focus on information-flow integrity, it
might be impossible to back port fail safety to legacy applications.

Furthermore, research needs to be done on how to identify when manual security
changes expose applications to security vulnerabilities. This way programmers
and researchers can devise new methods of protecting the end user when they
disable security features.

______________________________________________________________________

## Citations
