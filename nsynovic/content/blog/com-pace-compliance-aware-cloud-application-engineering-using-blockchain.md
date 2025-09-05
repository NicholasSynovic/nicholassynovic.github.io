---
title: 'A summary of COM-PACE: Compliance Aware Cloud Application Engineering Using Blockchain by Gagangeet Singh Aujla et al.'
description: Posted in the IEEE Computing Edge, October 2022
summary: Posted in the IEEE Computing Edge, October 2022

categories: [summary, magazine, article, internet of things, people, processes]
citations: []

draft: false

date: 2023-02-19T22:26:23-06:00
featured_image: ''
include_toc: true
markup: md
outputs: []
show_comments: false
toc: false
show_reading_time: true
---

# A summary of *COM-PACE: Compliance Aware Cloud Application Engineering Using Blockchain*

> Gagangeet Singh Aujla et al. IEEE Computing Edge, October 2022 DOI [0]

## Table of Contents

- [A summary of *COM-PACE: Compliance Aware Cloud Application Engineering Using Blockchain*](#a-summary-of-com-pace-compliance-aware-cloud-application-engineering-using-blockchain)
  - [Table of Contents](#table-of-contents)
  - [Summary](#summary)
    - [COM-PACE Architecture For Hosting Services In A Multicloud Environment](#com-pace-architecture-for-hosting-services-in-a-multicloud-environment)
      - [Compliance Provisioning](#compliance-provisioning)
      - [Compliance Monitoring](#compliance-monitoring)
      - [Compliance Verification and Enforcement](#compliance-verification-and-enforcement)
  - [Citations](#citations)

______________________________________________________________________

## Summary

This article proposes European General Data Protection Regulation (GDPR)
compliant cloud engineering practices in order to improve transparency of
personal data usage when using web services that are interlinked between one
another. For example, a website hosted on AWS that uses Google Adsense for
targeted advertisements and handles payment processing through Stripe.

As web services depend on many providers, end users may not be aware of how much
or how their data is being is captured or used by providers or third parties
should that data be shared. The GDPR is intended to make it transparent to users
how this data is collected and shared.

There are three terms that are often confused:

1. Security - Refers to the resilience against potential harm from attackers
1. Privacy - Refers to the with holding information from the largest number of
   individuals with respect to personal data
1. Compliance - Signifies the act of obeying a law or ruling

However, commercial cloud providers do not offer any promise of compliance with
any ruling or law. They do work to improve security, however, the companies that
use these services are required to maintain their own privacy guidelines. Given
the business of cloud providers who only offer a service for which others can
build tools on top of, it is difficult for them to understand the sensitivity of
data passing through their networks.

### COM-PACE Architecture For Hosting Services In A Multicloud Environment

COM-PACE is meant to be applied to a tradition Infrastructure as a Service
(IaaS) architecture while also encouraging the benefits of using multiple cloud
service providers.

To follow the COM-PACE architecture, cloud developers must follow these three
programming steps and operations:

1. Provisioning compliance at design and runtime - User data and organization
   resources must be analyzed in tandem. Once these are known, data can be
   appropriately provisioned between different tech stacks and/or cloud service
   providers.
1. Monitoring compliance at runtime - Monitoring checks for data leaks or
   non-GDPR data operations occurring within the system. Events can then be
   recorded to a block chain for logging and further analysis.
1. Verifying and enforcing compliance at runtime - The block chain manager can
   review all logged events and based on the event, can signal a violation or
   critical error to the system administrators.

#### Compliance Provisioning

Current cloud service providers do not support end-to-end compliance support.
This has to be the first step on the cloud service providers end to encourage
more developers to seriously consider GDPR compliance. Data transmissions should
be handled over HTTPS and encrypted with AES-256.

#### Compliance Monitoring

Current monitoring solutions do not fully encapsulate all of the metrics that
GDPR requires for compliance. Since cloud based services rely on virtual
machines or Docker containers to host software components, the granularity of
monitoring solutions needs to be fine grained. Additionally, depending upon the
component and where it is within the web stack, the monitoring solution needs to
multi-tiered to accommodate different metrics.

There exists many challenges with monitoring solutions. These include the volume
of events and alert overloads, rule complexities, the architecture of complex
systems, auditing issues in clouds, and application migration in multicloud.
Monitoring solutions need to be able to keep up with and mitigate these issues.

#### Compliance Verification and Enforcement

Smart contracts can handle the verification and enforcement of GDPR of a system
on a block chain.

______________________________________________________________________

## Citations
