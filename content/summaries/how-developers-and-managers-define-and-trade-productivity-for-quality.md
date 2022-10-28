---
title: A summary of How Developers and Managers Define and Trade Productivity for
  Quality by Margaret-Anne Storey et al.
description: A summary of How Developers and Managers Define and Trade Productivity
  for Quality by Margaret-Anne Storey et al.
summary: A summary of How Developers and Managers Define and Trade Productivity for
  Quality by Margaret-Anne Storey et al.

categories: [summary, productivity, managers, developers, se, software engineering,
  quality, survey, microsoft]
citations: [https://doi.org/10.1145/1273445.1273458, https://doi.org/10.1145/3528579.3529177,
  https://doi.org/10.1145/3454122.3454124, https://doi.org/10.1109/TSE.2018.2842201,
  https://doi.org/10.1007/978-1-4842-4221-6_3, https://www.microsoft.com/en-us/research/publication/appendix-to-productivity-quality-alignment,
  https://doi.org/10.1109/TSE.2019.2944354]

draft: false

date: 2022-10-27T16:03:42-05:00
featured_image: ''
include_toc: true
markup: md
outputs: []
show_comments: false
toc: true
show_reading_time: true
---

# A summary of *How Developers and Managers Define and Trade Productivity for Quality*

> Margaret-Anne Storey et al.; [DOI](https://doi.org/10.1145/3528579.3529177)

For the summary of the paper, go to the [Summary](#summary) section of this
article.

## Table of Contents

- [A summary of *How Developers and Managers Define and Trade Productivity for Quality*](#a-summary-of-how-developers-and-managers-define-and-trade-productivity-for-quality)
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

This paper aims to understand the issue of developers and managers having
differing views of productivity, and when to trade the quality of the product
for more productivity. Additionally, this calls into question what is quality,
as well as how does one measure both of these attributes.

### Motivation

> Why should we care about this paper?

We should care about this paper as it provides a case study conducted with
Microsoft developers and managers about how they measure and value productivity.
Thereby allowing establishing what a sample of developers define productivity
as, and what a sample of managers define it as well. Additionally, the authors
propose utilize their existing framework SPACE to codify developer and manager
responses. They also propose a new framework, TRUCE, designed to help developers
and managers make decisions about software quality vs productivity tradeoffs.
These frameworks are releated but provide different lenses into software
development.

### Category

> What type of paper is this work?

This paper is a survey paper of practicioners in industry.

### Context

> What other *types* of papers is the work related to?

This paper is closely related to industry metric usage survey papers, productity
and quality papers, and - more broadly - papers that disucss the usage of and of
software metrics in teams.

### Contributions

> What are the author's main contributions?

Thier contributions is a survey of what developers and managers at Microsoft
consider to be productivity and quality, as well as the TRUCE framework for
identifying when quality vs productivity should be tradedoff.

______________________________________________________________________

## Second Pass

> A proper read through of the paper is required to answer this

### Background Work

> What has been done prior to this paper?

Work has been done into understanding what software quality is, how to measure
productivity, and what is productivity. Also, the authors have previously
described a framework called SPACE (Satisfaction, Performance, Activity,
Collaboration, and Efficiency) which was used to codify the responses from the
survey participants.

### Figures, Diagrams, Illustrations, and Graphs

> Are the axes properly labeled? Are results shown with error bars, so that
> conclusions are statistically significant?

All of the figures are labeled properly, easy to understand, and have clear
captions.

### Clarity

> Is the paper well written?

The paper is well written. However, I'm not a fan with how the abstract was
structured. I found the topic-description approach didn't engage me as a reader.
But that is more of a personal opinion than an objective fact.

### Relevant Work

> Mark relevant work for review

The following relevant work can be found in the [Citations](#citations) section
of this article.

- [The SPACE of Developer Productivity: There’s More to It than You Think](https://doi.org/10.1145/3454122.3454124)
- [Motivation and satisfaction of software engineers](https://doi.org/10.1109/TSE.2018.2842201)
- [Why We Should Not Measure Productivity](https://doi.org/10.1007/978-1-4842-4221-6_3)
- [Appendix to How Developers and Managers Define and Trade Off Productivity and Quality](https://www.microsoft.com/en-us/research/publication/appendix-to-productivity-quality-alignment)
- [Towards a Theory of Software Developer Job Satisfaction and Perceived Productivity](https://doi.org/10.1109/TSE.2019.2944354)

### Methodology

> What methodology did the author's use to validate their contributions?

The authors conducted a survey of Microsoft developers and managers on how they
define productivity and quality, as well as the trade offs between productivity
and quality. 167 responses were collected, with 131 responses being from
developers and 34 from managers. Responses were codified using the SPACE
methodology proposed by the authors in a previous work.

Comparisons were made between how:

- Developers define productivity
- Managers define team productivity
- Developers define quality
- Managers define team quality
- How developers *think* managers define team productivity
- How managers *think* developers define productivity
- Do developers and managers trade quality for productivity?

### Author Assumptions

> What assumptions does the author(s) make? Are they justified assumptions?

They propose the TRUCE framework for software quality (Timeliness, Robustness,
User Needs, Collaboration Needs, and Evolvable) based on this study alone.

#### Correctness

> Do the assumptions seem valid?

I don't think that TRUCE can stand on its own just on this work. Additional
surveys and work need to be done to validate the usefulenss and how applicable
this framework is outside of the subset of developers and managers at Microsoft
that responded to the survey. The authors do address this in their paper.

### Future Directions

> My own proposed future directions for the work

I'd love to perform a literary review of related works and surveys to identify
if the TRUCE framework is applicable. Additionally, I'd like to perform a follow
up study of answering and analyzing the question as to what developers *think*
managers consider to be quality work and vice versa.

### Open Questions

> What open questions do I have about the work?

What prevented the authors from asking about what developers and managers
*think* the other considers quality work?

Can any of the SPACE or TRUCE definitions be quantified automatically by
analyzing feature requests?

### Author Feedback

> What feedback would I give to the authors?

I appreciate the clear figures, charts, and tables. I don't like the style of
the abstract as it doesn't engage me as a reader. But the finding boxes that
summarize the survey results per subsection were a nice touch and are
appreciated.

______________________________________________________________________

## Summary

> A summary of the paper

The paper *How Developers and Managers Define and Trade Productivity for
Quality* by Margaret-Anne Storey et al. \[1\] presents the results of a survey
conducted on 131 Microsoft developers and 34 managers about what they consider
to be productive work, quality work, what the other cohort defines each topic,
and if they have ever made explicit trade offs between productivity and quality.
The authors took the responses and codified them using the SPACE framework that
they proposed in an earlier paper \[2\].

They found that developers tend to define productive work as activities (number
of tasks completed or iterations; 50%), efficiency and flow (entering a flow
state; 38%), and productivity (delivering on projects; 35%). Managers tend to
define productive work across the team in productivity (67%), efficiency and
flow (45%), and collaboration (working with others to brainstorm ideas/
providing feedback; 33%).

However, developers *think* managers define team productivity in activity (53%),
productivity (37%), and collaboration (19%). Whereas managers *think* developers
define productivity in activity (52%), efficiency and flow (42%), and
productivity (24%). Here, both managers and developers *think* the other defines
productivity than what is actually true.

The take away with productivity, is that all participants defined productivity
under the SPACE framework.

Quality was defined under the proposed TRUCE (Timeliness, Robustness, User
Needs, Collaboration, Evolution) framework. Developers and managers both define
quality similarly as robustness (71%, 88%), evolution (44%, 33%), and user need
(38%, 39%). Managers rank user need higher than evolution, where as developers
disagree with them.

______________________________________________________________________

## Summarization Technique

This paper was summarized using a modified technique proposed by S. Keshav in
his work *How to Read a Paper* \[0\].

## Citations
