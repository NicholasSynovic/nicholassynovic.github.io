---
title: 'A summary of Small World with High Risks: A Study of Security Threats in the
  npm Ecosystem by Markus Zimmermann et al.'
description: Posted in the Proceedings of the 28th USENIX Security Symposium; 2019
summary: Posted in the Proceedings of the 28th USENIX Security Symposium; 2019
categories: [summary, USENIX Security Symposium, 2019]
citations: [https://doi.org/10.1145/1273445.1273458, https://www.usenix.org/conference/usenixsecurity19/presentation/zimmerman]

draft: true

date: 2022-11-02T22:49:58-05:00
featured_image: ''
include_toc: true
markup: md
outputs: []
show_comments: false
toc: true
show_reading_time: true
---

# A summary of *Small World with High Risks: A Study of Security Threats in the npm Ecosystem*

> Markus Zimmermann et al. 28th USENIX Security Symposium; 2019
> [DOI](https://www.usenix.org/conference/usenixsecurity19/presentation/zimmerman)

For the summary of the paper, go to the [Summary](#summary) section of this
article.

## Table of Contents

- [A summary of *Small World with High Risks: A Study of Security Threats in the npm Ecosystem*](#a-summary-of-small-world-with-high-risks-a-study-of-security-threats-in-the-npm-ecosystem)
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

This paper analyzes the security risks that the `npm` package manager exposes
end users to directly and indirectly through dependency analysis.

### Motivation

> Why should we care about this paper?

The 2016 `left-pad` and 2018 `eslint-scope` caused many dependent packages to
become exposed to security vulnerabilities after being taken down and
comprimised respectfully.

Additionally (and quoted from the paper):

```md
- Installing an average npm package introduces an implicit trust on 79 third-party packages and 39 maintainers, creating a surprisingly large attack surface.
- Highly popular packages directly or indirectly influence many other packages (often more than 100,000) and are thus potential targets for injecting malware.
- Some maintainers have an impact on hundreds of thousands of packages. As a result, a very small number of compromised maintainer accounts suffices to inject malware into the majority of all packages.
- The influence of individual packages and maintainers has been continuously growing over the past few years, aggravating the risk of malware injection attacks.
- A significant percentage (up to 40%) of all packages depend on code with at least one publicly known vulnerability.
```

### Category

> What type of paper is this work?

This is a security paper with particular focus on security analysis of software
supply chains.

### Context

> What other *types* of papers is the work related to?

Papers that analyze and quantify the risks to software hosting plaforms/
software ecosystems.

### Contributions

> What are the author's main contributions?

Their main contributions can be found in [Motivation](#motivation). More
generally, they show that `npm` is small in that packages are tightly dependent
upon one another, and that a single security vulnerability is enough to serously
cripple the functionality of the ecosystem. Furthermore, they analyze the
different threat vectors to `npm`, as well as the role of maintainers with
respect to the wider ecosystem.

______________________________________________________________________

## Second Pass

> A proper read through of the paper is required to answer this

### Background Work

> What has been done prior to this paper?

Work has been done understanding the usage of "micropackages", or packages that
accomplish a small functionality.

Work has been done to understand the server and client security vulnerabilities
in JavaScript.

Work has been done to understand software ecoystems and to raise questions that
need to be answered with respect to understanding the evolution of the
ecosystems.

### Figures, Diagrams, Illustrations, and Graphs

> Are the axes properly labeled? Are results shown with error bars, so that
> conclusions are statistically significant?

### Clarity

> Is the paper well written?

### Relevant Work

> Mark relevant work for review

The following relevant work can be found in the [Citations](#citations) section
of this article.

- Revisiting software ecosystems research: A longitudinal literature study \[2\]
- Challenges in software ecosystems research \[3\]
- An ecosystemic and socio-technical view on software maintenance and evolution
  \[4\]
- A look at the dynamics of the javascript package ecosystem \[5\]
- Structure and evolution of package dependency networks \[6\]
- An empirical comparison of dependency network evolution in seven software
  packaging ecosystems \[7\]
- The evolution of the R software ecosystem \[8\]
- The evolution of project inter-dependencies in a software ecosystem: The case
  of apache \[9\]
- Gentoo package dependencies over time \[10\]

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
