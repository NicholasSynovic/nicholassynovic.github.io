---
title: A summary of Learning Deep Features for Discriminative Localization by Bolei
  Zhou et al.
description: A summary of Learning Deep Features for Discriminative Localization by
  Bolei Zhou et al.
summary: A summary of Learning Deep Features for Discriminative Localization by Bolei
  Zhou et al.

categories: [summary, cnn, dl, object detection, cam, class activation mapping]
citations: [https://doi.org/10.1145/1273445.1273458, http://arxiv.org/abs/1512.04150]

draft: false

date: 2022-10-24T14:44:26-05:00
featured_image: ''
include_toc: true
markup: md
outputs: []
show_comments: false
toc: true
show_reading_time: true
---

# A summary of *Learning Deep Features for Discriminative Localization*

> Bolei Zhou et al.; [DOI](http://arxiv.org/abs/1512.04150)

For the summary of the paper, go to the [Summary](#summary) section of this
article.

## Table of Contents

- [A summary of *Learning Deep Features for Discriminative Localization*](#a-summary-of-learning-deep-features-for-discriminative-localization)
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
  - [Third Pass](#third-pass)
    - [Author Assumptions](#author-assumptions)
    - [Correctness](#correctness)
    - [Discussion of the Proofs](#discussion-of-the-proofs)
    - [How Would I Present the Idea(s)](#how-would-i-present-the-ideas)
    - [Future Directions](#future-directions)
  - [Summary](#summary)
  - [Summarization Technique](#summarization-technique)
  - [Citations](#citations)

______________________________________________________________________

## First Pass

> Discussion about the title, abstract, introduction, section and sub-section
> headings, and conclusion

The paper *Learning Deep Features for Discriminative Localization* by Bolei Zhou
et al. \[1\] describes using the global average pooling layer of CNNs to not
only regularize data, but also to localize objects in an image **even if the
network wasn't trained for object detection**. The authors propose a method for
object localization that involves a simple modification to the layer to generate
what they call "class activation maps" (CAMs), which are heatmaps of where the
CNN is "looking" at an image for labeling. The hotter the heatmap, the more
focus the CNN is putting on that specific image region.

The authors go into detail as to how one would accomplish this with a
weakly-supervised object localization method, and its applications towards deep
features for generic localization, fine-grained recognition, and pattern
discovery. They conclude with visualizing class specific units.

Their technique accomplishes object localization in a single forward pass on
existing CNN models that utilize a global average pooling layer.

### Category

> What type of paper is this work?

This paper is a CNN understanding and technique paper. It discusses a method for
understanding what a CNN is looking at as well as expanding the usage of image
classifiers for object localization.

### Context

> What other *types* of papers is the work related to?

This paper is related to works involving object localization, image
classification, CNNs, and Deep Learning papers.

### Contributions

> What are the author's main contributions?

The author's main contribution is a method for modifying the global average
pooling layer in CNNs to perform object localization in a single forward pass.

______________________________________________________________________

## Second Pass

### Background Work

> What has been done prior to this paper?

There has been work done in utilizing weakly-supervised learning to perform
object localization. However, these works either don't evaluate the object
localization task, or utilize multiple passes to perform the task.

There has been numerous work that has gone into visualizing what occurs within a
CNN. Additionally, there has been work that has looked at the global *max*
pooling layer, however, this work is the first to utilize the global *average*
layer.

### Motivation

> Why should we care about this paper?

We should care about this paper as

### Figures, Diagrams, Illustrations, and Graphs

> Are the axes properly labeled? Are results shown with error bars, so that
> conclusions are statistically significant?

### Clarity

> Is the paper well written?

### Relevant Work

> Mark relevant work for review

The following relevant work can be found in the [Citations](#citations) section
of this article.

- Self-taught object localization with deep networks
- Weakly supervised object localization with multi-fold multiple instance
  learning
- Learning and transferring mid-level image representations using convolutional
  neural networks
- Is object localization for free? weakly-supervised learning with convolutional
  neural networks
- Visualizing and understanding convolutional networks
- Object detectors emerge in deep scene cnns
- Network in network
- Going deeper with convolutions

______________________________________________________________________

## Third Pass

> This section can only be complete after a virtual re-implementation of the
> paper

### Author Assumptions

> What assumptions does the author(s) make? Are they justified assumptions?

### Correctness

> Do the assumptions seem valid?

### Discussion of the Proofs

### How Would I Present the Idea(s)

### Future Directions

> My own proposed future directions for the work

______________________________________________________________________

## Summary

> A summary of the paper

______________________________________________________________________

## Summarization Technique

This paper was summarized using the technique proposed by S. Keshav in his work
*How to Read a Paper* \[0\].

## Citations
