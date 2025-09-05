---
title: 'A summary of You Only Look Once: Unified, Real-Time Object Detection by Joseph Redmon et al.'
description: Posted in the CVPR, 2016
summary: Posted in CVPR, 2016

categories: [summary, CVPR, 2016]
citations: [https://doi.org/10.1145/1273445.1273458, https://doi.org/10.1109/CVPR.2016.91]

draft: false

date: 2022-12-02T21:50:54-06:00
featured_image: ''
include_toc: true
markup: md
outputs: []
show_comments: false
toc: false
show_reading_time: true
---

# A summary of *You Only Look Once: Unified, Real-Time Object Detection*

> Joseph Redmon et al. CVPR, 2016 [DOI](https://doi.org/10.1109/CVPR.2016.91)

For the summary of the paper, go to the [Summary](#summary) section of this
article.

## Table of Contents

- [A summary of *You Only Look Once: Unified, Real-Time Object Detection*](#a-summary-of-you-only-look-once-unified-real-time-object-detection)
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

The authors wanted to create a very fast object detection network that handles
object detection using both region proposals and class probability maps in one
unified model.

### Motivation

> Why should we care about this paper?

Because this model was the fastest object detection model of its time with being
able to infrence at 45 FPS or 155 FPS.

### Category

> What type of paper is this work?

This is an object detection computer vision paper

### Context

> What other *types* of papers is the work related to?

This paper is related to work in real time object detection.

### Contributions

> What are the author's main contributions?

Their main contribution is a model architecture (implemented with VGG) that is
very fast at performing object detection in real time (45 FPS) or super fast
(155 FPS) at the cost of accuracy.

______________________________________________________________________

## Second Pass

> A proper read through of the paper is required to answer this

### Background Work

> What has been done prior to this paper?

Work has been done to develop real time object detection systems as well as
region proposal based object detection models.

### Figures, Diagrams, Illustrations, and Graphs

> Are the axes properly labeled? Are results shown with error bars, so that
> conclusions are statistically significant?

The figures and tables in this paper are clear and easy to understand.

### Clarity

> Is the paper well written?

This paper is well written.

### Relevant Work

> Mark relevant work for review

The following relevant work can be found in the [Citations](#citations) section
of this article.

### Methodology

> What methodology did the author's use to validate their contributions?

The authors tested variations of their model on the PASCAL VOC dataset against
other SOTA models and measured the MAP percentage of the results. Furthermore,
they measured the real time object detection performance of their model
variations as well.

### Author Assumptions

> What assumptions does the author(s) make? Are they justified assumptions?

YOLO trades accuracy for speed which the author's argue in their Introduction is
applicable to the domain of self driving cars.

#### Correctness

> Do the assumptions seem valid?

While infrence speed is a necessity within that domain, I would argue that
accuracy is more important, as I would want a system that could detect a stop
sign in front of the car accurately but slower, than quickly but innacurately.

### Future Directions

> My own proposed future directions for the work

This work has undergone many revisions since its initial publication. I'd like
to review the enhancements that were made to the model since this initial
publication and see what was changed and understand why.

### Open Questions

> What open questions do I have about the work?

Is this model bottlenecked by the number of classes that it has to look at
and/or understand?

### Author Feedback

> What feedback would I give to the authors?

This was a really good paper. I would encourage further work in this field and
specifically to test this model out on low powered devices.

______________________________________________________________________

## Summary

> A summary of the paper

The paper *You Only Look Once: Unified, Real-Time Object Detection* by Joseph
Redmon et al. [1] describes an object detection strategy that aims to outperform
previous methods **in terms of infrence speed measured in FPS** by creating a
unified model that can perform region proposals and class probability mapping to
a source image in parallel. This model is called YOLO.

The authors of this paepr were able to accomplis this by using the following
technique:

1. Divide the source image into many sub-sections.
1. In parallel, compute the regions of interest as well as the class probability
   mapping for each sub-section.
1. Predict the class label and bounding boxes at the final layer by analyzing
   the overlap between the class probability mapping and regions of interest.

Their methodology was implemented using the VGG architecture + extra layers to
accomodate for the parallel nature of the design.

______________________________________________________________________

## Summarization Technique

This paper was summarized using a modified technique proposed by S. Keshav in
his work *How to Read a Paper* [0].

## Citations
