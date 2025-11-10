______________________________________________________________________

title: 'A summary of Small World with High Risks: A Study of Security Threats in
the npm Ecosystem by Markus Zimmermann et al.' description: Posted in the
Proceedings of the 28th USENIX Security Symposium; 2019 summary: Posted in the
Proceedings of the 28th USENIX Security Symposium; 2019 categories: \[summary,
USENIX Security Symposium, 2019\] citations:
\[https://doi.org/10.1145/1273445.1273458,
https://www.usenix.org/conference/usenixsecurity19/presentation/zimmerman,
https://doi.org/10.1016/j.jss.2016.02.003,
https://doi.org/10.1145/2797433.2797475, https://doi.org/10.1109/ICSME.2016.19,
https://doi.org/10.1145/2901739.2901743, https://doi.org/10.1109/MSR.2017.55,
https://doi.org/10.1007/s10664-017-9589-y, https://doi.org/10.1109/CSMR.2013.33,
https://doi.org/10.1109/ICSM.2013.39, https://doi.org/10.1145/2597073.2597131]

draft: false

## date: 2022-11-02T22:49:58-05:00 featured_image: '' include_toc: true markup: md outputs: [] show_comments: false toc: false show_reading_time: true

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
compromised respectfully.

Additionally (and quoted from the paper):

```md
- Installing an average npm package introduces an implicit trust on 79
third-party packages and 39 maintainers, creating a surprisingly large attack
surface.
- Highly popular packages directly or indirectly influence many other packages
(often more than 100,000) and are thus potential targets for injecting malware.
- Some maintainers have an impact on hundreds of thousands of packages. As a
result, a very small number of compromised maintainer accounts suffices to
inject malware into the majority of all packages.
- The influence of individual packages and maintainers has been continuously
growing over the past few years, aggravating the risk of malware injection
attacks.
- A significant percentage (up to 40%) of all packages depend on code with at
least one publicly known vulnerability.
```

### Category

> What type of paper is this work?

This is a security paper with particular focus on security analysis of software
supply chains.

### Context

> What other *types* of papers is the work related to?

Papers that analyze and quantify the risks to software hosting platforms/
software ecosystems. Additionally, papers that discuss the threat models of
software ecosystems are also related.

### Contributions

> What are the author's main contributions?

Their main contributions can be found in [Motivation](#motivation). More
generally, they show that `npm` is small in that packages are tightly dependent
upon one another, and that a single security vulnerability is enough to
seriously cripple the functionality of the ecosystem. Furthermore, they analyze
the different threat models to `npm`, as well as the role of maintainers with
respect to the wider ecosystem. In addition, they propose several different
mitigations for their proposed threat models. These include:

- a vetting process to create "trusted" maintainers
- a vetting process to analyze newly contributed code of specific packages

If both process were to be created for a single package, that package would be
considered to have, "perfect first-party security". And if this was to be
extended to all transitive packages of that sole package, then it would be
considered to have "perfect third-party security" If both of the considerations
were to be met, then the package would be considered to be a "fully secured
package".

______________________________________________________________________

## Second Pass

> A proper read through of the paper is required to answer this

### Background Work

> What has been done prior to this paper?

Work has been done understanding the usage of "micro packages", or packages that
accomplish a small functionality.

Work has been done to understand the server and client security vulnerabilities
in JavaScript.

Work has been done to understand software ecosystems and to raise questions that
need to be answered with respect to understanding the evolution of the
ecosystems.

### Figures, Diagrams, Illustrations, and Graphs

> Are the axes properly labeled? Are results shown with error bars, so that
> conclusions are statistically significant?

All of the figures are clearly made, as well as well captioned.

### Clarity

> Is the paper well written?

This paper is well written and dense. I do wonder if this paper could have been
broken up into potentially two smaller papers. But at the same time, if the
author's were to do that, it might be hard to justify the overall contribution
of the work per paper.

### Relevant Work

> Mark relevant work for review

The following relevant work can be found in the [Citations](#citations) section
of this article.

- Revisiting software ecosystems research: A longitudinal literature study [2]
- Challenges in software ecosystems research [3]
- An ecosystem and socio-technical view on software maintenance and evolution
  [4]
- A look at the dynamics of the JavaScript package ecosystem [5]
- Structure and evolution of package dependency networks [6]
- An empirical comparison of dependency network evolution in seven software
  packaging ecosystems [7]
- The evolution of the R software ecosystem [8]
- The evolution of project inter-dependencies in a software ecosystem: The case
  of Apache [9]
- Gentoo package dependencies over time [10]

### Methodology

> What methodology did the author's use to validate their contributions?

The author's used `npm` package metadata from 2011 to April of 2018 to generate
several graphs of how packages are related to one another. Following this, they
then utilized graph metrics to measure the potential vulnerabilities `npm` is
exposed to, as well as the actual reach of vulnerable packages within `npm`.
Additionally, they utilized the package metadata to visualize and understand the
growth of `npm` year over year. They utilized these metrics to understand how
potentially dangerous their proposed threat models are to engineers who use
`npm`.

### Author Assumptions

> What assumptions does the author(s) make? Are they justified assumptions?

The author's assume that all proposed threat models are of the same concern. For
some engineers, different models can be of different levels of concern.

#### Correctness

> Do the assumptions seem valid?

Yes, as this would have involved a survey of engineers to understand

### Future Directions

> My own proposed future directions for the work

While the study of `npm` is useful as it is the world's largest software package
ecosystem, I'd like to apply the metrics implemented in this work to
understanding PTM software ecosystems, such as Hugging Face and PyTorch Hub.

### Open Questions

> What open questions do I have about the work?

Will the author's perform a survey to understand if developers feel like the
proposed threat models are feasible?

What is the `npm` community's opinion on reducing the number of micro packages
hosted on `npm`?

### Author Feedback

> What feedback would I give to the authors?

This work is very interesting and allows for easy expansion and exploration into
other software ecosystems. I suggest to make their graphs publicly available, as
well as to submit the graph to services such as Snyk so that they can further
analyze the data for security concerns (if they haven't already).

______________________________________________________________________

## Summary

> A summary of the paper

The paper *Small World with High Risks: A Study of Security Threats in the npm
Ecosystem* by Markus Zimmermann et al. [1] was a large scale study on `npm`
packages and package dependencies taken from 2011 to April 2018. This study was
done to understand the various different threat models that exist on `npm` as
well as to understand how `npm` has evolved. By studying the evolution of `npm`,
the author's were able to analyze the growth of potentially vulnerable software
that can be affected by the proposed threat models. These threat models target
the underlying software package supply chain, and as `npm` is considered to be a
small world (packages are tightly coupled to one another often resulting in long
chains), their are high risks involved when a single package is compromised, as
potentially countless more are affected by it.

The author's main contributions were (taken from the paper):

```md
- Installing an average npm package introduces an implicit trust on 79
third-party packages and 39 maintainers, creating a surprisingly large attack
surface.
- Highly popular packages directly or indirectly influence many other packages
(often more than 100,000) and are thus potential targets for injecting malware.
- Some maintainers have an impact on hundreds of thousands of packages. As a
result, a very small number of compromised maintainer accounts suffices to
inject malware into the majority of all packages.
- The influence of individual packages and maintainers has been continuously
growing over the past few years, aggravating the risk of malware injection
attacks.
- A significant percentage (up to 40%) of all packages depend on code with at
least one publicly known vulnerability.
```

In addition, they propose several different mitigations for their proposed
threat models. These include:

- a vetting process to create "trusted" maintainers
- a vetting process to analyze newly contributed code of specific packages

If both process were to be created for a single package, that package would be
considered to have, "perfect first-party security". And if this was to be
extended to all transitive packages of that sole package, then it would be
considered to have "perfect third-party security" If both of the considerations
were to be met, then the package would be considered to be a "fully secured
package".

The threat models that the author's identified were:

- Malicious packages
- Exploiting Unmaintained Legacy Code
- Package Takeover
- Account Takeover
- Collusion Attacks

They found that:

- The number of maintainers on `npm` is growing significantly slower than the
  number of released packages. In other words, maintainers are creating more and
  more packages and are there by creating a larger and larger threat space for
  an attacker to execute an Account or Package Takeover attack.
- That packages on `npm` have a linear growth of direct dependencies, but a
  super linear growth of transitive dependencies
- That the average package reach is growing at an exponential rate year over
  year
- That there is growth in implicitly trusting maintainers
- That there is fairly linear growth in the number of unpatched advisories year
  over year
- That the rate at which published vulnerabilities per 10,000 packages has been
  rapidly increasing year over year.

______________________________________________________________________

## Summarization Technique

This paper was summarized using a modified technique proposed by S. Keshav in
his work *How to Read a Paper* [0].

## Citations
