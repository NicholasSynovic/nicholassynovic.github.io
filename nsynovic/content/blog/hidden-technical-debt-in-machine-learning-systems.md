---
title: A summary of Hidden Technical Debt in Machine Learning Systems by D. Sculley et al.
description: Posted in the Proceedings of NeurIPS, 2015
summary: Posted in the Proceedings of NeurIPS, 2015

categories: [summary, NeurIPS, 2015]
citations: [https://doi.org/10.1145/1273445.1273458, https://proceedings.neurips.cc/paper/2015/hash/86df7dcfd896fcaf2674f757a2463eba-Abstract.html, https://doi.org/10.1109/MTD.2012.6225994, https://doi.org/10.1145/2487575.2488200, https://proceedings.neurips.cc/paper/2007/hash/4b04a686b0ad13dce35fa99fa4161c65-Abstract.html, https://www.usenix.org/conference/osdi14/technical-sessions/presentation/chilimbi, https://doi.org/10.1145/2623330.2623349, https://www.usenix.org/conference/osdi14/technical-sessions/presentation/li_mu, https://doi.org/10.1145/2020408.2020455]

draft: false

date: 2022-11-11T09:55:18-06:00
featured_image: ''
include_toc: true
markup: md
outputs: []
show_comments: false
toc: false
show_reading_time: true
---

# A summary of *Hidden Technical Debt in Machine Learning Systems*

> D. Sculley Proceedings of NeurIPS, 2015
> [DOI](https://proceedings.neurips.cc/paper/2015/hash/86df7dcfd896fcaf2674f757a2463eba-Abstract.html)

For the summary of the paper, go to the [Summary](#summary) section of this
article.

## Table of Contents

- [A summary of *Hidden Technical Debt in Machine Learning Systems*](#a-summary-of-hidden-technical-debt-in-machine-learning-systems)
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

Machine learning systems incur technical debt like traditional software systems.
However, they also incur additional debt that traditional software systems do
not.

### Motivation

> Why should we care about this paper?

Because this paper aims at establishing definitions for potential technical debt
that can be incurred while developing machine learning systems.

### Category

> What type of paper is this work?

This is a language definition paper. In other words, it is suggesting language
to be used when describing the technical debt of machine learning systems.

### Context

> What other *types* of papers is the work related to?

This paper is related to those that discuss and define technical debt broadly
and in domain specific applications.

### Contributions

> What are the author's main contributions?

Their main contributions are definitions and language to be used when describing
the different technical debt that can be incurred while developing machine
learning systems.

These debts include:

- **Boundary Erosion**
- **Entanglement**
- **Hidden Feedback Loops**
- **Undeclared Consumers**
- **Data Dependencies**
- **Configuration Issues**
- **Changes in the External World**
- **System-Level Anti-Patterns**
- **Traditional Software System Technical Debt**

______________________________________________________________________

## Second Pass

> A proper read through of the paper is required to answer this

### Background Work

> What has been done prior to this paper?

Work has been done to identify traditional software technical debt and software
system anti-patterns.

### Figures, Diagrams, Illustrations, and Graphs

> Are the axes properly labeled? Are results shown with error bars, so that
> conclusions are statistically significant?

There is one figure in this paper. While the visualization works, the usage of a
gray scale image makes it difficult to read the text.

### Clarity

> Is the paper well written?

The paper is well written. The structure of this paper is quite simplistic,
which I appreciate as it makes it easier to digest.

### Relevant Work

> Mark relevant work for review

The following relevant work can be found in the [Citations](#citations) section
of this article.

2. J. D. Morgenthaler, M. Gridnev, R. Sauciuc, and S. Bhansali. *Searching for
   build debt: Experiences managing technical debt at google*. In Proceedings of
   the Third International Workshop on Managing Technical Debt, 2012.
1. H. B. McMahan, G. Holt, D. Sculley, M. Young, D. Ebner, J. Grady, L. Nie, T.
   Phillips, E. Davydov, D. Golovin, S. Chikkerur, D. Liu, M. Wattenberg, A. M.
   Hrafnkelsson, T. Boulos, and J. Kubica. *Ad click prediction: a view from the
   trenches*. In The 19th ACM SIGKDD International Conference on Knowledge
   Discovery and Data Mining, KDD 2013, Chicago, IL, USA, August 11-14, 2013,
   2013\.
1. . Langford and T. Zhang. *The epoch-greedy algorithm for multi-armed bandits
   with side information*. In Advances in neural information processing systems,
   pages 817–824, 2008.
1. T. M. Chilimbi, Y. Suzue, J. Apacible, and K. Kalyanaraman. *Project adam:
   Building an efficient and scalable deep learning training system*. In 11th
   USENIX Symposium on Operating Systems Design and Implementation, OSDI ’14,
   Broomfield, CO, USA, October 6-8, 2014., pages 571–582, 2014.
1. B. Dalessandro, D. Chen, T. Raeder, C. Perlich, M. Han Williams, and F.
   Provost. *Scalable hands free transfer learning for online advertising*. In
   Proceedings of the 20th ACM SIGKDD international conference on Knowledge
   discovery and data mining, pages 1573–1582. ACM, 2014.
1. M. Li, D. G. Andersen, J. W. Park, A. J. Smola, A. Ahmed, V. Josifovski, J.
   Long, E. J. Shekita, and B. Su. *Scaling distributed machine learning with
   the parameter server*. In 11th USENIX Symposium on Operating Systems Design
   and Implementation, OSDI ’14, Broomfield, CO, USA, October 6-8, 2014., pages
   583–598, 2014.
1. D. Sculley, M. E. Otey, M. Pohl, B. Spitznagel, J. Hainsworth, and Y. Zhou.
   *Detecting adversarial advertisements in the wild. In Proceedings of the 17th
   ACM SIGKDD International Conference on Knowledge Discovery and Data Mining*,
   San Diego, CA, USA, August 21-24, 2011, 2011

### Methodology

> What methodology did the author's use to validate their contributions?

The author's look to traditional software and machine learning system examples
for anti-patterns and

### Author Assumptions

> What assumptions does the author(s) make? Are they justified assumptions?

As this paper proposes potential areas of technical debt for machine learning
systems, nearly all of it is assuming that something will go wrong when working
with a machine learning system.

#### Correctness

> Do the assumptions seem valid?

Given the type of paper that this is, yes, the assumptions seem valid.
Furthermore, the justifications for each type of technical debt are well
explained and made clear in the literature.

### Future Directions

> My own proposed future directions for the work

As I'm now starting to study ML dependencies, this work is a great springboard
to drill deeper into what both ML and software engineers consider technical debt
and dependents.

### Open Questions

> What open questions do I have about the work?

Are there identifiable cases of ML models that have one or more of the technical
debts described here?

### Author Feedback

> What feedback would I give to the authors?

Overall this was a solid paper. I'd appreciate more real world examples of
models that have dealt with technical debt. Additionally, a survey of engineers
about whether they think each type of technical debt is worthy of considerations
would have been appreciated.

______________________________________________________________________

## Summary

> A summary of the paper

The paper *Hidden Technical Debt in Machine Learning Systems* by D. Sculley et
al. [1] presents potential technical debt considerations that ML engineers need
to consider when developing ML systems. These considerations stem both from
experience as well as traditional software engineering technical debt.
Furthermore, they pose several questions that engineers should ask when taking
on technical debt.

These questions are:

- How easily can an entirely new algorithmic approach be tested at full scale?
- What is the transitive closure of all data dependencies?
- How precisely can the impact of a new change to the system be measured?
- Does improving one model or signal degrade others?
- How quickly can new members of the team be brought up to speed?

The authors defined several areas where technical debt can accrue:

- **Model Boundary Erosion**
  - *Entanglement*: CACE principle (Changing Anything Changes Everything) which
    applies to both data and model training
  - *Correction Cascades*: Transfer learning/ fine tuning a PTM creates a new
    model (B) which is now dependent upon the original model's (A) weights and
    architecture
  - *Undeclared Consumers*: Similar to visibility debt [2]; creates tight and
    hidden coupling to the model which if changed, could affect the wider system
- **Data Dependencies**: Static analysis of data dependencies could resolve this
  [3]
  - *Unstable Data Dependencies*: Some data signals change qualitatively or
    quantitatively over time. Therefore, improving input signals to the system
    could harm the output signals of the model
  - *Underutilized Data Dependencies*: Similar to underutilized dependencies in
    traditional software engineering; data signals that the model is trained on
    but have little to no effect on the output signal. Removing these signals
    post-training, however, could greatly affect the quality of the model.
    Examples include:
    - `Legacy Features`
    - `Bundled Features`: Features that collectively improve performance that
      are bundled together
    - `ǫ-Features`: Adding features to marginally improve accuracy
    - `Correlated Features`: Models struggle to distinguish between two
      correlated features, one of which is causal (important) and the other
      non-causal (not important)
- **Feedback Loops**
  - *Direct Feedback Loops*: A model may directly influence the selection if its
    own future training data based on the decisions it makes
  - *Hidden Feedback Loops*: Two systems may influence each other indirectly by
    affecting the sources of their data
- **ML-System Anti-Patterns**
  - *Glue Code*: Trying to stitch together two incompatible components of a
    system results in significant code overhead
  - *Pipeline Jungles*: Data pre-processing
  - *Dead Experimental Codepaths*
  - *Abstraction Debt*: There is a lack of standardized abstractions for ML
    systems components
  - *Common Smells*:
    - `Plain-Old-Data Type Smell`
    - `Multiple-(Programming) Language Smell`
    - `Prototype Smell`
- **Configuration Debt**
  - Taken verbatim from the paper:

```md
• It should be easy to specify a configuration as a small change from a previous configuration.
• It should be hard to make manual errors, omissions, or oversights.
• It should be easy to see, visually, the difference in configuration between two models.
• It should be easy to automatically assert and verify basic facts about the configuration:
number of features used, transitive closure of data dependencies, etc.
• It should be possible to detect unused or redundant settings.
• Configurations should undergo a full code review and be checked into a repository
```

- **A Changing External World**
  - *Fixed Threshold in Dynamic Systems*: Manually selecting a decision
    threshold that a system has to abide by.
  - *Monitoring and Testing*: "Comprehensive live monitoring of system behavior
    in real time combined with automated response is critical for long-term
    system reliability"
    - `Prediction Bias`
    - `Action Limits`
    - `Up-Stream Producers`
  - *Data Testing Debt*
  - *Reproducibility Debt*: It is difficult to reproduce results from ML
    research due to randomized algorithms, non-determinism inherent in parallel
    learning, initial conditions, and interactions with the external world
  - *Process Management Debt*: How does one handle a system with many models?
  - *Cultural Debt*: Difficulty re-using academic research in industry

______________________________________________________________________

## Summarization Technique

This paper was summarized using a modified technique proposed by S. Keshav in
his work *How to Read a Paper* [0].

## Citations
