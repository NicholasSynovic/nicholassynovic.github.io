---
title: A summary of Rich feature hierarchies for accurate object detection and semantic
  segmentation by Ross Girshick et al.
description: Posted in the Proceecdings of CVPR, 2014
summary: Posted in the Proceecdings of CVPR, 2014

categories: [summary, CVPR, 2014]
citations: [https://doi.org/10.1145/1273445.1273458]

draft: false

date: 2022-11-10T10:05:51-06:00
featured_image: ''
include_toc: true
markup: md
outputs: []
show_comments: false
toc: true
show_reading_time: true
---

# A summary of *Rich feature hierarchies for accurate object detection and semantic segmentation*

> Ross Girshick et al. CVPR, 2014 DOI

For the summary of the paper, go to the [Summary](#summary) section of this
article.

## Table of Contents

- [A summary of *Rich feature hierarchies for accurate object detection and semantic segmentation*](#a-summary-of-rich-feature-hierarchies-for-accurate-object-detection-and-semantic-segmentation)
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

This paper aims to achieve SOTA object detection by using a combination of
computer vision and deep learning techniques. This was choosen because object
detection on the PASCAL VOC 2007 dataset results have stagnated for the past two
years prior to publication.

### Motivation

> Why should we care about this paper?

We should care about this paper because the author's propose an efficent method
for performing object detection while also being more accurate than previous
results. Furthermore, they introduce the usage of fine-tuning a larger CV model
on a domain specific task in order to achieve better performance.

### Category

> What type of paper is this work?

This paper is both an algorithms paper and a CV model review paper.

### Context

> What other *types* of papers is the work related to?

This paper is related to works that talk about SOTA models, as well as papers
that talk about CV models for object detection.

### Contributions

> What are the author's main contributions?

Their main contributions are a proposed algorithm for performing object
detection using DL based region proposals prior to CNN analysis and the usage of
fine-tuning a larger model on a domain specific task to improve accuracy/
performance on the task.

______________________________________________________________________

## Second Pass

> A proper read through of the paper is required to answer this

### Background Work

> What has been done prior to this paper?

Work has been done in creating CNNs for the PASCAL VOC challenge, creating
algorithms for feature extraction for the purposes of object detection, creating
algorithms for region proposal (selective search was used for this paper), and
creating ensemble based DL models.

### Figures, Diagrams, Illustrations, and Graphs

> Are the axes properly labeled? Are results shown with error bars, so that
> conclusions are statistically significant?

All of the figures and tables are easy to read and are clear.

### Clarity

> Is the paper well written?

The paper is well written. It goes into great technical length about the
attributes of hte model as well as how the model operates via an ablation study.

### Relevant Work

> Mark relevant work for review

The following relevant work can be found in the [Citations](#citations) section
of this article.

TODO

### Methodology

> What methodology did the author's use to validate their contributions?

The authors compared their model (R-CNN) with and without bounding boxes against
the previous SOTA models. Additionally, they conducted an ablation study on
their model to understand how it works internally.

### Author Assumptions

> What assumptions does the author(s) make? Are they justified assumptions?

The author

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
