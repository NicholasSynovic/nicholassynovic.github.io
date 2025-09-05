---
title: A summary of Very Deep Convolutional Networks for Large-Scale Image Recognition by Karen Simonyan and Andrew Zisserman
description: Published as a conference paper at ICLR 2015
summary: Published as a conference paper at ICLR 2015

categories: [summary, CNN, CV, computer vision, ICLR, 2015]
citations: [https://doi.org/10.1145/1273445.1273458, https://doi.org/10.48550/arXiv.1409.1556, https://doi.org/10.1145/3065386, https://doi.org/10.1162/neco.1989.1.4.541, https://doi.org/10.1145/3065386, https://doi.org/10.1007/978-3-319-10590-1_53, https://doi.org/10.48550/arXiv.1312.6229]

draft: false

date: 2022-09-28T22:40:46-05:00
featured_image: ''
include_toc: true
markup: md
outputs: []
show_comments: false
toc: false
show_reading_time: true
---

# A summary of *Very Deep Convolutional Networks for Large-Scale Image Recognition* by Karen Simonyan and Andrew Zisserman

> Karen Simonyan and Andrew Zisserman;
> [https://doi.org/10.48550/arXiv.1409.1556](https://doi.org/10.48550/arXiv.1409.1556)

For the summary of the paper, go to the [Summary](#summary) section of this
article.

## Table of Contents

- [A summary of *Very Deep Convolutional Networks for Large-Scale Image Recognition* by Karen Simonyan and Andrew Zisserman](#a-summary-of-very-deep-convolutional-networks-for-large-scale-image-recognition-by-karen-simonyan-and-andrew-zisserman)
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

The paper *Very Deep Convolutional Networks for Large Scale Image Recognition*
by Karen Simonyan and Andrew Zissernman discusses the SOTA performance of their
model in the 2014 ImageNet Challenge on localization and classification tasks.
They discuss that be extending the depth of convolutional neural networks to 16
up to 19 layers, with a 3x3 filter size, SOTA performance is possible without
redeveloping the architecture of existing convolutional neural networks. This is
in contrast to [Szegedy's work](going-deeper-with-convolutions.md) who proposes
the Inception architecture for classification and object detection; with which
the reference implementation also came first in the 2014 ImageNet Challenge in
its respective tasks. Simoyan et al. discuss the architecture and training that
went into their model (VGG) and how to architect future models to perform as
well or better.

### Category

> What type of paper is this work?

This is both a computer vision model evaluation and architecture paper.

### Context

> What other *types* of papers is the work related to?

This paper is most closely related to others who publish work regarding SOTA
performance on CV architecture and models.

### Contributions

> What are the author's main contributions?

Their main contributions is an exploration of depth in traditional convolutional
neural networks to achieve SOTA performance.

______________________________________________________________________

## Second Pass

### Background Work

> What has been done prior to this paper?

Prior work has gone into optimizing the width and initial convolutions of
convolutional neural networks.

[Szegedy et al.](going-deeper-with-convolutions.md) proposed a new architecture
(Inception) that achieved SOTA performance in the 2014 ImageNet Challenge. Else,
Krizhevsky et al. [2] and others have proposed improvements to the convolutional
neural network architecture.

### Motivation

> Why should we care about this paper?

We should care about the authors work as increasing the depth of a neural
network by their proposed architecture allows for easy expansion of existing
convolutional neural networks without redesigning the libraries used to create
them.

### Figures, Diagrams, Illustrations, and Graphs

> Are the axes properly labeled? Are results shown with error bars, so that
> conclusions are statistically significant?

The tables that are presented are easy to read, but can be improved upon. Often,
multiple rows will correspond with a single model configuration. This is fine,
however, it is difficult to make out what configuration each row corresponds to.
Additionally, the tables make comparing error percentages easy across model
configurations.

### Clarity

> Is the paper well written?

The paper is well written and can be understood.

### Relevant Work

> Mark relevant work for review

The following relevant work can be found in the [Citations](#citations) section
of this article.

- Classical convolutional neural network architecture - [3]
- GoogLeNet - [2]
- Clarifai
- ImageNet classification with deep convolutional neural net- works [4]
- Isotropically-rescaled training image
- ImageNet 2013 submissions - [5], [6] Localization and Detection using
  Convolutional Networks

### Author Assumptions

> What assumptions does the author(s) make? Are they justified assumptions?

The authors assume that the performance improvements that convolutional neural
networks are achieving are based off of larger data sets and better compute
optimization.

#### Correctness

> Do the assumptions seem valid?

I agree with their assumption. However, [2] created a SOTA model utilizing a new
architecture, rather than improving upon an existing one.

### Future Directions

> My own proposed future directions for the work

I would love to try and optimize the input layer of convolutional neural
networks by having a computation that not only looks at the color space, but
also the opacity of an image. This would allow for images to have their
background removed for the purposes of classification by making the background
less opaque than the foreground.

______________________________________________________________________

## Summary

> A summary of the paper

The paper *Very Deep Convolutional Networks for Large Scale Image Recognition*
by Karen Simonyan and Andrew Zissernman discusses the SOTA performance of their
model in the 2014 ImageNet Challenge on localization and classification tasks.
They discuss that be extending the depth of convolutional neural networks to 16
up to 19 layers, with a 3x3 filter size, SOTA performance is possible without
redeveloping the architecture of existing convolutional neural networks. Their
work builds of previous efforts of improving convolutional neural network
performance by optimizing the filter size and initial layer, but contrasts
contemporaries [2] by not developing a new architecture. Their work has
importance as it shows that the existing convolutional neural network
architecture is capable of SOTA performance by increasing the depth of the
model. They justify this by trying six different model configurations, and
finding that models with 16 to 19 layers performed best on the 2014 ImageNet
Challenge classification and localization challenges.

______________________________________________________________________

## Summarization Technique

This paper was summarized using a modified technique proposed by S. Keshav in
his work *How to Read a Paper* [0].

## Citations
