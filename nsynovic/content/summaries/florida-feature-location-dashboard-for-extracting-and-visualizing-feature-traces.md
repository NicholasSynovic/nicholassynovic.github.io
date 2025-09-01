---
title: 'A summary of FLOrIDA: Feature LOcatIon DAshboard for Extracting and Visualizing
  Feature Traces by Andam et al.'
description: 'Posted in the VaMoS 17: Proceedings of the 11th International Workshop
  on Variability Modelling of Software-Intensive Systems, 2017'
summary: 'Posted in the VaMoS 17: Proceedings of the 11th International Workshop on
  Variability Modelling of Software-Intensive Systems, 2017'

categories: [summary, paper, software and its engineering, software creation and management,
  reuhttps://doi.org/10.1145/3023956.3023967sability, software product lines, maintaining
      software, software system structures]
citations: [https://doi.org/10.1145/1273445.1273458, https://doi.org/10.1145/3023956.3023967,
  https://biglever.com/solution/gears/, https://featureide.github.io/, https://www.pure-systems.com/purevariants,
  https://doi.org/10.1145/2791060.2791107]

draft: false

date: 2023-06-28T08:42:13-05:00
featured_image: ''
include_toc: true
markup: md
outputs: []
show_comments: false
toc: false
show_reading_time: true
---

# A summary of *FLOrIDA: Feature LOcatIon DAshboard for Extracting and Visualizing Feature Traces*

> Andam et al. Posted in the VaMoS 17: Proceedings of the 11th International
> Workshop on Variability Modelling of Software-Intensive Systems, 2017 DOI
> \[0\]

For the summary of the paper, go to the [Summary](#summary) section of this
article.

## Table of Contents

- [A summary of *FLOrIDA: Feature LOcatIon DAshboard for Extracting and Visualizing Feature Traces*](#a-summary-of-florida-feature-location-dashboard-for-extracting-and-visualizing-feature-traces)
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

Features are abstractions that help define what a system does. These features
can be described as code, models, or requirements. However, as the system
evolves and is worked upon by many individuals, the location of the implemented
features can become lost and therefore difficult to find. Current solutions rely
upon engineers manually tracking features, but this is a time consuming task.

Thus the problem is that there is currently no tooling for the identification
and extraction of feature locations and information from system artifacts.

### Motivation

> Why should we care about this paper?

Because knowing were features are located within systems is useful for
refactoring, extension, deletion, and communication about what a system does
where and when. Additionally, the effort to recover the location of features is
time consuming and gets in the way of the engineer from working. Furthermore,
existing tools rely on established software product lines to be useful. This is
a problem because it encourages the profileration of problems related to feature
location early in the software development lifecycle, which the author's oppose.

### Category

> What type of paper is this work?

This is a tools paper focussed on the software development lifecycle.

### Context

> What other *types* of papers is the work related to?

This paper is related to tools papers focused on code metrics, and partially
related to tools papers focussed on process metrics. Additionally, it is related
to work on reproducibility and the habits of software engineers.

### Contributions

> What are the author's main contributions?

FLOrIDA: A tool for the automatic extraction and location identification of
features in software artifacts.

______________________________________________________________________

## Second Pass

> A proper read through of the paper is required to answer this

### Background Work

> What has been done prior to this paper?

Previous work has shown that engineers spend a significant amount of time
locating features. Additional work shows that feature locations are often not
well documented, and those that are not kept up to date. Finally, tools for
feature identification and location tracking have been developed. but are only
suited for existing software product lines.

### Figures, Diagrams, Illustrations, and Graphs

> Are the axes properly labeled? Are results shown with error bars, so that
> conclusions are statistically significant?

The figures and images are not clear, and their captions do not assit in
understanding the figures.

However, Table 1 is clear adn easy to read and understand.

### Clarity

> Is the paper well written?

The paper is well written, with the exception of the figure and table captions
which are sparse.

### Relevant Work

> Mark relevant work for review

- Gears \[2\]
- FeatureIDE \[3\]
- pure::varients \[4\]
- Maintaining feature traceability with embedded annotations \[5\]

The following relevant work can be found in the [Citations](#citations) section
of this article.

### Methodology

> What methodology did the author's use to validate their contributions?

The author's tested their tool against a large project, as well as had two
architects on a similarly large project comment on the usefulness of the tool.

### Author Assumptions

> What assumptions does the author(s) make? Are they justified assumptions?

The assumption that the authors made was that this tool is only useful for the
software product lines. I can see this tool being useful for even small
projects, as it would allow for engineers of any scale to quickly search for and
find reusable code.

#### Correctness

> Do the assumptions seem valid?

Yes, because this topic is primarily focussed for the industrial sector.

### Future Directions

> My own proposed future directions for the work

I'd like to reimplement this tool as an Electron app and add additional
functionality from similar research papers.

### Open Questions

> What open questions do I have about the work?

This tool hooks into the filesystem of the project to track changes. Why was
this method choosen over using the underlying version control system to identify
changes?

### Author Feedback

> What feedback would I give to the authors?

I'd like to see this tool utilize the version control system of the project over
reimplementing the wheel for tracking changes.

______________________________________________________________________

## Summary

> A summary of the paper

*FLOrIDA: Feature LOcatIon DAshboard for Extracting and Visualizing Feature
Traces* by Andam et al. describes a tool aimed at software production lines for
the automatic location, identification, and measurement of software features
from artifacts. The need for this tool stems from the effort that engineers go
through in identifying and modifying features within artifacts. The tool offers
a fairly robust interface for these tasks.

______________________________________________________________________

## Summarization Technique

This paper was summarized using a modified technique proposed by S. Keshav in
his work *How to Read a Paper* \[0\].

## Citations
