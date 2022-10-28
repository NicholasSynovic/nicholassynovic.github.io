---
title: A summary of How to implement SVMs by John Platt
description: A summary of How to implement SVMs by John Platt
summary: A summary of How to implement SVMs by John Platt

categories: [summary, SVMs, ml, CV, implementation]
citations: [https://doi.org/10.1145/1273445.1273458, https://doi.ieeecomputersociety.org/10.1109/5254.708428,
  https://link.springer.com/article/10.1023/A:1009715923555, https://scikit-learn.org/stable/modules/svm.html,
  https://www.rdocumentation.org/packages/e1071/versions/1.7-11/topics/svm, https://hyperpolyglot.org/numerical-analysis]

draft: false

date: 2022-10-24T13:46:36-05:00
featured_image: ''
include_toc: true
markup: md
outputs: []
show_comments: false
toc: true
show_reading_time: true
---

# A summary of *How to implement SVMs*

> John Platt; [DOI](https://doi.ieeecomputersociety.org/10.1109/5254.708428)

For the summary of the paper, go to the [Summary](#summary) section of this
article.

## Table of Contents

- [A summary of *How to implement SVMs*](#a-summary-of-how-to-implement-svms)
  - [Table of Contents](#table-of-contents)
  - [First Pass](#first-pass)
    - [Category](#category)
    - [Context](#context)
    - [Contributions](#contributions)
  - [Second Pass](#second-pass)
    - [Background Work](#background-work)
    - [Motivation](#motivation)
    - [Figures, Diagrams, Illustrations, and Graphs](#figures-diagrams-illustrations-and-graphs)
    - [Clarity](#clarity)
    - [Relevant Work](#relevant-work)
    - [Author Assumptions](#author-assumptions)
    - [Correctness](#correctness)
    - [Future Directions](#future-directions)
  - [Summary](#summary)
  - [Summarization Technique](#summarization-technique)
  - [Citations](#citations)

______________________________________________________________________

## First Pass

> Discussion about the title, abstract, introduction, section and sub-section
> headings, and conclusion

The essay *How to implement SVMs* by John Platt (as part of the larger *Support
vector machine* collection of essays in the July/ August edition of the 1998
IEEE Intelligent Systems magazine) \[1\] discusses how to implement a Support
Vector Machine (SVM). This essay goes into great detail on implementation
strategies for handling larger data sets, as well as methods for training SVMs.
Topics include understanding the Quadratic Problem (what SVMs aim to solve),
sequential minimal optimization (reaching a global minimal value), and where to
find SVM implementations.

### Category

> What type of paper is this work?

This essay seems to be a tutorial/ workshop paper about SVMs.

### Context

> What other *types* of papers is the work related to?

I would expect papers that are about implementing SVMs from scratch would be
related to this essay.

### Contributions

> What are the author's main contributions?

Their main contributions are an understanding of how SVMs work as well as how to
implement them efficiently.

______________________________________________________________________

## Second Pass

### Background Work

> What has been done prior to this paper?

Work has already been done on experimenting optimal SVM algorithms and
minimization functions.

### Motivation

> Why should we care about this paper?

We should care about this paper as it provides an understanding of what a SVM is
and how they function.

### Figures, Diagrams, Illustrations, and Graphs

> Are the axes properly labeled? Are results shown with error bars, so that
> conclusions are statistically significant?

The figure and charts have proper labels and captions that explain what they are
representing.

### Clarity

> Is the paper well written?

For the most part, yes. However, the essay expects the reader to be
knowledgeable about SVMs prior to reading the essay. This is shown mostly
through the usage of mathematical notation specific to the problem domain, and
linking to other work to explain it. While this is a short essay for a magazine,
a brief sentence or two about the notation would have been appreciated.

### Relevant Work

> Mark relevant work for review

The following relevant work can be found in the [Citations](#citations) section
of this article.

- A Tutorial on Support Vector Machines for Pattern Recognition \[2\]

### Author Assumptions

> What assumptions does the author(s) make? Are they justified assumptions?

The author assumes that the reader, should they implement their own SVM
algorithm, will be using a commercial numerical analysis package.

#### Correctness

> Do the assumptions seem valid?

Without understanding the nature of the numerical analysis packages of 1998, I
would assume that this assumption is correct. I base this on that the author
mentions that free numerical analysis packages (not if they were open sourced or
not) run slower than commercial packages and may have errors due to precision
mistakes.

### Future Directions

> My own proposed future directions for the work

I'm not interested in creating my own SVM algorithm. However, having a better
understanding of how SVMs work as well as the different minimization functions
that they implement, would be nice to know.

______________________________________________________________________

## Summary

> A summary of the paper

The essay *How to implement SVMs* by John Platt (as part of the larger *Support
vector machine* collection of essays in the July/ August edition of the 1998
IEEE Intelligent Systems magazine) \[1\] discusses how to implement a Support
Vector Machine (SVM). The author goes into detail about what an SVM is trying to
accomplish (minimize a quadratic problem on a high dimensional matrix), what
techniques exist to solve this problem, as well as available programs to allow
for researchers to utilize SVMs in their work.

Overall, the essay does a good job of explaining the problem space as well as
implementation details, however, the essay is very much a product of its time.
There is less of a need to develop new SVM algorithms as there are many that are
provided off of the shelf in free and open source numerical analysis packages
\[3\] \[4\]. Additionally, the suggestion that readers should purchase a
numerical analysis package to create their own SVM is dated in my opinion, as
again, there are many free options available \[5\].

______________________________________________________________________

## Summarization Technique

This paper was summarized using a modified technique proposed by S. Keshav in
his work *How to Read a Paper* \[0\].

## Citations
