---
title: A summary of Robust Real Time-Face Detection by P. Viola and M.J. Jones
description: Published in the 2004 International Journal of Computer Vision
summary: Published in the 2004 International Journal of Computer Vision

categories: [summary, face detection, boosting, human sensing, International Journal
      of Computer Vision, 2004]
citations: [https://doi.org/10.1145/1273445.1273458, https://doi.org/10.1023/B:VISI.0000013087.49260.fb,
  https://doi.org/10.1006/jcss.1997.1504]

draft: false

date: 2022-10-24T19:29:57-05:00
featured_image: ''
include_toc: true
markup: md
outputs: []
show_comments: false
toc: false
show_reading_time: true
---

# A summary of *Robust Real-Time Face Detection*

> P. Viola and M.J. Jones;
> [DOI](https://doi.org/10.1023/B:VISI.0000013087.49260.fb)

For the summary of the paper, go to the [Summary](#summary) section of this
article.

## Table of Contents

- [A summary of *Robust Real-Time Face Detection*](#a-summary-of-robust-real-time-face-detection)
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
    - [Future Directions](#future-directions)
  - [Summary](#summary)
  - [Summarization Technique](#summarization-technique)
  - [Citations](#citations)

______________________________________________________________________

## First Pass

> Discussion about the title, abstract, introduction, section and sub-section
> headings, and conclusion

The paper *Robust Real-Time Face Detection* by P. Viola and M.J. Jones \[1\]
presents a new methodology for efficiently performing face detection. They due
this through the usage of an integral image which is able to reduce the
computational complexity to constant time (O(1)) of analyzing an image as it
doesn't rely on scale invariance and thus an image pyramid. Additional, the
classifier that they build is "simple and efficient" and allows for the engineer
to specify a large number of features to be analyzed without compromising on
performance as it relies upon the Ada Boost algorithm to select important
features. Furthermore, the authors propose a method for building a cascade of
classifiers which further reduces computation time as each classifier specifies
. Finally, they propose experiments that can be ran on face detection data sets
to conduct supervised learning.

While this paper does propose many new and innovative ideas, the paper
originates from 2003.

### Category

> What type of paper is this work?

This is a research paper focusing on improving the Computer Vision task of face
detection without the reliance of CNNs.

### Context

> What other *types* of papers is the work related to?

This paper is most closely related to non-CNN face detection papers.

### Contributions

> What are the author's main contributions?

They create an integral image which is able to reduce the computational
complexity to constant time (O(1)) of analyzing an image as it doesn't rely on
scale invariance and thus an image pyramid. Additionally, the classifier that
they build is "simple and efficient" and allows for the engineer to specify a
large number of features to be analyzed without compromising on performance as
it relies upon the Ada Boost algorithm to select important features.
Furthermore, the authors propose a method for building a cascade of classifiers
which further reduces computation time as each classifier specifies . Finally,
they propose experiments that can be ran on face detection data sets to conduct
supervised learning.

______________________________________________________________________

## Second Pass

> A proper read through of the paper

### Background Work

> What has been done prior to this paper?

Prior work has been done in creating face detection systems. Prior work has been
done in creating the Ada Boost algorithm that is used to create a cascade of
classifiers. Prior work has been done in identifying methodologies to create
image features.

### Motivation

> Why should we care about this paper?

We should care about this paper as it presents a non-CNN methodology for
reliably identifying faces in images. Additionally, the authors also present a
methodology for doing this task efficiently on low end hardware.

### Figures, Diagrams, Illustrations, and Graphs

> Are the axes properly labeled? Are results shown with error bars, so that
> conclusions are statistically significant?

The figures, diagrams, and graphs are well explained and designed.

### Clarity

> Is the paper well written?

Yes, however a bit lengthy. Optimizations could have been made with respect to
reducing the amount of content describing the background to the Ada Boost
algorithm.

### Relevant Work

> Mark relevant work for review

The following relevant work can be found in the [Citations](#citations) section
of this article.

- A Decision-Theoretic Generalization of On-Line Learning and an Application to
  Boosting \[2\]

### Future Directions

> My own proposed future directions for the work

I'd like to implement their work on a low powered device and compare it to a
newer CNN model on ML metrics.

______________________________________________________________________

## Summary

> A summary of the paper

The paper *Robust Real-Time Face Detection* by P. Viola and M.J. Jones \[1\]
presents a new methodology for efficiently performing face detection. They due
this through the usage of an integral image which is able to reduce the
computational complexity to constant time (O(1)) of analyzing an image as it
doesn't rely on scale invariance and thus an image pyramid. Additionally, the
classifier that they build is "simple and efficient" and allows for the engineer
to specify a large number of features to be analyzed without compromising on
performance as it relies upon the Ada Boost algorithm to select important
features. Furthermore, the authors propose a method for building a cascade of
classifiers which further reduces computation time as each classifier specifies
. Finally, they propose experiments that can be ran on face detection data sets
to conduct supervised learning.

The main "wow" factor of this work is that it was built on a low powered system.
This same application could be more performant on modern smartphones in
comparison to the system that it was originally tested on.

______________________________________________________________________

## Summarization Technique

This paper was summarized using a modified technique proposed by S. Keshav in
his work *How to Read a Paper* \[0\].

## Citations
