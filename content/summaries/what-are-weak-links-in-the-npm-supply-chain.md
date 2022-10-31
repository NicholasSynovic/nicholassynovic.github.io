---
title: A summary of "What are Weak Links in the npm Supply Chain?", by Nusrat Zahan
  et al.
description: Posted in the Proceedings of ICSE-SEIP 2022
summary: Posted in the Proceedings of ICSE-SEIP 2022

categories: [summary, software, software engineering, SE, reuse, npm, supply chains]
citations: [https://doi.org/10.1145/1273445.1273458, https://doi.org/10.1145/3510457.3513044]

draft: true

date: 2022-10-31T09:50:49-05:00
featured_image: ''
include_toc: true
markup: md
outputs: []
show_comments: false
toc: true
show_reading_time: true
---

# A summary of *"What are Weak Links in the npm Supply Chain?"*

> Nusrat Zahan et al.; Proceedings of ICSE-SEIP 2022;
> [DOI](https://doi.org/10.1145/3510457.3513044)

For the summary of the paper, go to the [Summary](#summary) section of this
article.

## Table of Contents

- [A summary of *"What are Weak Links in the npm Supply Chain?"*](#a-summary-of-what-are-weak-links-in-the-npm-supply-chain)
  - [Table of Contents](#table-of-contents)
  - [First Pass](#first-pass)
    - [Problem](#problem)
    - [Motivation](#motivation)
    - [Category](#category)
    - [Context](#context)
    - [Contributions](#contributions)
  - [Second Pass](#second-pass)
    - [Background Work](#background-work)
    - [Figures, Diagrams, Illustrations, and Graphs](#figures-diagrams-illustrations-and-graphs)
    - [Clarity](#clarity)
    - [Relevant Work](#relevant-work)
    - [Methodology](#methodology)
    - [Author Assumptions](#author-assumptions)
      - [Correctness](#correctness)
    - [Future Directions](#future-directions)
    - [Open Questions](#open-questions)
    - [Author Feedback](#author-feedback)
  - [Summary](#summary)
  - [Summarization Technique](#summarization-technique)
  - [Citations](#citations)

______________________________________________________________________

## First Pass

> Read the title, abstract, introduction, section and sub-section headings, and
> conclusion

### Problem

> What is the problem addressed in the paper?

Supply chain attacks stem from a data-driven approach where malicious actors
analyze signals in packages to identify weak links that can be exploited through
the insertion of malicious code. These attacks propagate through the supply
chain and affect unsuspecting users who rely on packages dependent upon the
compromised package.

### Motivation

> Why should we care about this paper?

Reports indicate that in 2021 supply chain attacks increased by 650%. An example
supply chain attack that crippled significant infrastructure was the SolarWinds
attack, which affected 425 Fortune 500 companies and several U.S. federal
agencies. Attacks on the supply chain stem from a data-driven approach, where
attackers analyze package metadata to identify which packages are most
vulnerable based on several signals, and then insert malicious code into the
package. This malicious code then propagates through the supply chain, thereby
affecting many unsuspecting downstream users. The more signals a package has,
the weaker it is considered to be within the supply chain - thereby earning the
name: "weak link". Weak links exposes a package to a higher risk of a supply
chain attack and an attacker can exploit signals to execute a supply chain
attack.

### Category

> What type of paper is this work?

This paper is similar to a bug study in that it proposes classifications for
weak link signals. It also is a survey paper, as 470 `npm` package maintainers
were interviewed to identify if weak link signals are of importance.
Additionally, this paper proposes a framework for identifying weak link packages
as well.

### Context

> What other *types* of papers is the work related to?

This paper is similar to papers that study supply chain vulnerabilities, `npm`
analysis papers, MSR papers, and developer survey papers.

### Contributions

> What are the author's main contributions?

The authors contributions are:

- A proposal of six weak link signals based on an empirical study of 1.63
  million `npm` packages (91% of all packages on `npm` as of 2021)
- A survey of how `npm` package maintainers perceive the proposed weak link
  signals
  - Three of which were considered to be **strong** signals by the maintainers
- Eight new signals suggested by the surveyed maintainers
- A framework to collect, categorize, and analyze package metadata in `npm` to
  evaluate weak link signals

______________________________________________________________________

## Second Pass

> A proper read through of the paper is required to answer this

### Background Work

> What has been done prior to this paper?

Work has been done to define supply chain attacks:

- Supply Chain Attack: "A supply chain attack is a cyber-attack that aims to
  infect organizations and end-users by targeting less-secure components in the
  supply chain"

Work has been done to define supply chain attacks:

- Malicious package release
- Social Engineering: Getting a maintainer to hand over sensitive information
- Account Takeover: Taking over an account to inject malicious code under the
  maintainer's name
- Ownership Transfer: Taking over an abandoned package
- Remote Execution: Taking over a package by compromising its dependencies

Work has been done to identify that supply chain attacks are a real threat, and
that no proposed framework is all-encompassing to prevent these attacks from
occurring.

Work has been done to identify that the human element of package management
(maintainer and contributor information) is the most likely vector to attack.

### Figures, Diagrams, Illustrations, and Graphs

> Are the axes properly labeled? Are results shown with error bars, so that
> conclusions are statistically significant?

The figures and charts are properly labelled, and are clear to read and
understand.

### Clarity

> Is the paper well written?

The paper is clear to read, however, there are numerous grammatical errors that
are throughout the paper (punctuation and capitalization errors).

### Relevant Work

> Mark relevant work for review

The following relevant work can be found in the [Citations](#citations) section
of this article.

- Does distributed development affect software quality? an empirical case study
  of windows vista
- Don’t touch my code! Examining the effects of ownership on software quality
- SolarWinds attack explained: And why it was so hard to detect
  (https://www.csoonline.com/article/3601508/solarwinds-supply-chain-attack-explained-why-organizations-were-not-prepared.html)
- The Hijacking of Perl.com
  (https://www.perl.com/article/the-hijacking-of-perl-com/)
- Towards Measuring Supply Chain Attacks on Package Managers for Interpreted
  Languages
- Detecting suspicious package updates
- Anomalicious: Automated Detection of Anomalous and Potentially Malicious
  Commits on GitHub
- SolarWinds Orion Security Breach: A Shift In The Software Supply Chain
  Paradigm
  (https://snyk.io/blog/solarwinds-orion-security-breach-a-shift-in-the-software-supply-chain-paradigm/)
- Compromised npm Package: event-stream
  (https://medium.com/intrinsic-blog/compromised-npm-package-event-stream-d47d08605502)
- Secure at every step: What is software supply chain security and why does it
  matter?
  (https://github.blog/2020-09-02-secure-your-software-supply-chain-and-protect-against-supply-chain-threats-github-blog/)
- CCleaner Attack Timeline—Here’s How Hackers Infected 2.3 Million PCs.
  (https://thehackernews.com/2018/04/ccleaner-malware-attack.html)
- The Untold Story of NotPetya, the Most Devastating Cyberattack in History
  (https://www.idagent.com/blog/2017-08-03-notpetya-threat-supply-chains-across-ukraine/)
- Secure open source collaboration: an empirical study of linus’ law
- The State of Open Source Security (https://snyk.io/open-source-security/)
- Backstabber’s knife collection: A review of open source software supply chain
  attacks
- CII Best Practices Badge Program
  (https://bestpractices.coreinfrastructure.org/en)
- Open Source Security Metrics (https://metrics.openssf.org/)
- Security Scorecards for Open Source Projects
  (https://github.com/ossf/scorecard)
- Small world with high risks: A study of security threats in the npm ecosystem

### Methodology

> What methodology did the author's use to validate their contributions?

### Author Assumptions

> What assumptions does the author(s) make? Are they justified assumptions?

#### Correctness

> Do the assumptions seem valid?

### Future Directions

> My own proposed future directions for the work

### Open Questions

> What open questions do I have about the work?

### Author Feedback

> What feedback would I give to the authors?

______________________________________________________________________

## Summary

> A summary of the paper

______________________________________________________________________

## Summarization Technique

This paper was summarized using a modified technique proposed by S. Keshav in
his work *How to Read a Paper* \[0\].

## Citations
