---
title: A summary of Focal Loss for Dense Object Detection by Tsung-Yi Lin et al.
description: Posted in arXiv, 2018
summary: Posted in arXiv, 2018

categories: [summary, arXiv, 2018]
citations: [https://doi.org/10.1145/1273445.1273458, http://arxiv.org/abs/1708.02002]

draft: false

date: 2022-12-03T12:01:03-06:00
featured_image: ''
include_toc: true
markup: md
outputs: []
show_comments: false
toc: true
show_reading_time: true
---

# A summary of *Focal Loss for Dense Object Detection*

> Tsung-yi Lin et al. arXiv, 2018 [DOI](http://arxiv.org/abs/1708.02002)

For the summary of the paper, go to the [Summary](#summary) section of this
article.

## Table of Contents

- [A summary of *Focal Loss for Dense Object Detection*](#a-summary-of-focal-loss-for-dense-object-detection)
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

This paper aims to address the problem that one stage object detectors (i.e.
YOLO, SSD) face when trying to match the performance of SOTA two stage object
detectors which is class imbalancing.

### Motivation

> Why should we care about this paper?

Because it introduces a new loss function that addresses the issue of class
imbalancing when training dense, one stage object detectors. Additionally, the
authors released an example model implementing this loss known as Detectron/
RetinaNet.

### Category

> What type of paper is this work?

This is an algorithms and CV object detection paper.

### Context

> What other *types* of papers is the work related to?

This paper is related to papers demonstrating or working on one stage object
detection models.

### Contributions

> What are the author's main contributions?

The author's main contribution is a new loss function aimed at training one
stage object detection models that reduces the problem of class imbalancing
between identifying objects in the foreground and background. Furthermore, the
authors have released an example model that was trained on this loss function
known as Detectron/RetinaNet.

______________________________________________________________________

## Second Pass

> A proper read through of the paper is required to answer this

### Background Work

> What has been done prior to this paper?

Work has been done in developing classic object detectors, one and two stage
detectors, reducing class imbalancing, and robust estimation techniques.

### Figures, Diagrams, Illustrations, and Graphs

> Are the axes properly labeled? Are results shown with error bars, so that
> conclusions are statistically significant?

### Clarity

> Is the paper well written?

### Relevant Work

> Mark relevant work for review

The following relevant work can be found in the [Citations](#citations) section
of this article.

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
