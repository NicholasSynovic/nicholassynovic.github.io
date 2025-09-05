---
title: A summary of "What are Weak Links in the npm Supply Chain?", by Nusrat Zahan et al.
description: Posted in the Proceedings of ICSE-SEIP 2022
summary: Posted in the Proceedings of ICSE-SEIP 2022

categories: [summary, Software Ecosystem, Supply Chain Security, npm, Weak link Signal, ICSE-SEIP, 2022]
citations: [https://doi.org/10.1145/1273445.1273458, https://doi.org/10.1145/3510457.3513044, https://doi.org/10.1109/ICSE.2009.5070550, https://doi.org/10.1145/2025113.2025119, https://www.csoonline.com/article/3601508/solarwinds-supply-chain-attack-explained-why-organizations-were-not-prepared.html, https://www.perl.com/article/the-hijacking-of-perl-com/, https://doi.org/10.48550/arXiv.2002.01139, https://doi.org/10.1109/ICSE-NIER.2019.00012, https://doi.org/10.1109/ICSE-SEIP52600.2021.00035, https://snyk.io/blog/solarwinds-orion-security-breach-a-shift-in-the-software-supply-chain-paradigm/, https://medium.com/intrinsic-blog/compromised-npm-package-event-stream-d47d08605502, https://github.blog/2020-09-02-secure-your-software-supply-chain-and-protect-against-supply-chain-threats-github-blog/, https://thehackernews.com/2018/04/ccleaner-malware-attack.html, https://www.idagent.com/blog/2017-08-03-notpetya-threat-supply-chains-across-ukraine/, https://doi.org/10.1145/1653662.1653717, https://snyk.io/open-source-security/, https://doi.org/10.1007/978-3-030-52683-2_2, https://bestpractices.coreinfrastructure.org/en, https://metrics.openssf.org/, https://github.com/ossf/scorecard, https://www.usenix.org/conference/usenixsecurity19/presentation/zimmerman]

draft: false

date: 2022-10-31T09:50:49-05:00
featured_image: ''
include_toc: true
markup: md
outputs: []
show_comments: false
toc: false
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

The figures and charts are properly labeled, and are clear to read and
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
  of windows vista [2]
- Don’t touch my code! Examining the effects of ownership on software quality
  [3]
- SolarWinds attack explained: And why it was so hard to detect [4]
- The Hijacking of Perl.com [5]
- Towards Measuring Supply Chain Attacks on Package Managers for Interpreted
  Languages [6]
- Detecting suspicious package updates [7]
- Anomalicious: Automated Detection of Anomalous and Potentially Malicious
  Commits on GitHub [8]
- SolarWinds Orion Security Breach: A Shift In The Software Supply Chain
  Paradigm [9]
- Compromised npm Package: event-stream [10]
- Secure at every step: What is software supply chain security and why does it
  matter? [11]
- CCleaner Attack Timeline—Here’s How Hackers Infected 2.3 Million PCs [12]
- The Untold Story of NotPetya, the Most Devastating Cyberattack in History [13]
- Secure open source collaboration: an empirical study of linus’ law [14]
- The State of Open Source Security [15]
- Backstabber’s knife collection: A review of open source software supply chain
  attacks [16]
- CII Best Practices Badge Program [17]
- Open Source Security Metrics [18]
- Security Scorecards for Open Source Projects [19]
- Small world with high risks: A study of security threats in the npm ecosystem
  [20]

### Methodology

> What methodology did the author's use to validate their contributions?

The author's identified weak link signals by analyzing potential vulnerabilities
regarding the maintainer and contributor information in a `npm` package's
`package.json` file. They then validated their weak links by measuring how
frequently they appear in the unique set of the join between the top 10,000 most
popular and the most frequently downloaded packages (with duplicates removed).
This resulted in 14,892 packages to analyze.

Their proposed weak links were:

- Expired Maintainer Email Domain
- Package Installation Script
- Unmaintained Package
- Too Many Maintainers
- Too Many Contributors
- Overloaded Maintainer

Then they validated the usefulness of their weak links by surveying 470
maintainers about how useful the proposed weak links are as well as other
potential weak links to consider.

### Author Assumptions

> What assumptions does the author(s) make? Are they justified assumptions?

All weak links proposed by the authors, except for the package installation
script, relied upon an assumption.

The author's assumed that an accounts with an expired email domain don't have
2FA enabled in their analysis. Additionally, their measurement of expired email
domains is flawed as it relied upon checking if a domain was available for
purchase, and had no check to see if the domain was considered to be a
compromised domain.

The author's were unable to distinguish between a feature complete package and
an unmaintained package in their analysis.

The author's arbitrarily assigned a number to represent the max number of
maintainers and contributors to a repository. They also assumed the amount of
work that a maintainer can take on.

#### Correctness

> Do the assumptions seem valid?

These assumptions don't seem valid to me.

While being unable to check the 2FA status of an account makes sense, their
methodology for checking email domains was described to flawed and a manual
undertaking even by the author's.

Additionally, they mentioned that it was difficult to distinguish between a
feature complete and an unmaintained package.

Finally, they were critiqued by their reviewers (to which I agree with on this
point) that assuming that too many maintainers or contributors is an incorrect
weak link as the nature of open source encourages collaboration and a "more the
merrier" approach to developing software.

### Future Directions

> My own proposed future directions for the work

I'd love to expand off of this work and see if the same issues exist within
pre-trained model supply chains. Additionally, the author's propose further work
into the matter in *Section 6: LIMITATIONS* that seems promising and
interesting.

### Open Questions

> What open questions do I have about the work?

I am curious as to the ethics behind such a study when tooling is built to
analyze potential package vulnerabilities. In other words, is it ethical to
*keep* tools to analyze for vulnerabilities, or should they be destroyed after
their intended usage?

### Author Feedback

> What feedback would I give to the authors?

Please run the paper through a grammar checking service. Additionally,
understanding the nature and desired outcome of developing open-source software
could have helped when deciding on weak link criteria.

______________________________________________________________________

## Summary

> A summary of the paper

The paper, *What are Weak Links in the npm Supply Chain?* by Nursat Zahan et al.
[1] was published in 2022 in the proceedings of the 44th International
Conference on Software Engineering: Software Engineering in Practice
(ICSE-SEIP). This paper discusses six potential signals that could identify a
package as a weak link within the `npm` supply chain. Additionally, the paper
conducted a survey with 470 `npm` maintainers about the proposed weak links to
understand their validity and to additionally find potential signals that could
also identify weak links.

They drew upon industry experience and understanding when determining the six
weak links. Furthermore, these weak links relied upon maintainer and contributor
information derived from the `package.json` file of the `npm` packages. These
weak links were:

- Expired Maintainer Email Domain
- Package Installation Script
- Unmaintained Package
- Too Many Maintainers
- Too Many Contributors
- Overloaded Maintainer

The author's performed a case study on 14,892 packages to identify the
prevalence of these weak links. They then validated the usefulness of these weak
links by surveying 470 contributors. They found that surveyors agreed with the
first three weak links, but not the remaining three as it went against the ethos
of open source development. They also proposed eight new weak links which were
not validated by the authors:

- Ownership Transfer
- Adding New Maintainers
- Maintainer Identity
- Maintainer Two-Factor Authentication
- No Source Code Repository
- `npm` Package vs Source Code Repository
- CI/CD Pipeline
- Open Pull Request

______________________________________________________________________

## Summarization Technique

This paper was summarized using a modified technique proposed by S. Keshav in
his work *How to Read a Paper* [0].

## Citations
