---
title: A summary of Applying SVMs to Face Detection by Edgar Osuna
description: Published as an article in the 1998 July/August publication of the IEEE
  Intelligent Systems magazine's Support Vector Machines section
summary: Published as an article in the 1998 July/August publication of the IEEE Intelligent
  Systems magazine's Support Vector Machines section

categories: [summary, SVMs, ml, CV, face detection, IEEE Intelligent Systems, 1998]
citations: [https://doi.org/10.1145/1273445.1273458, https://doi.ieeecomputersociety.org/10.1109/5254.708428,
  https://www.sciencedirect.com/science/article/abs/pii/0167865594900272, 
      https://proceedings.neurips.cc/paper/1995/hash/2f29b6e3abc6ebdefb55456ea6ca5dc8-Abstract.html,
  https://www.sciencedirect.com/science/article/abs/pii/0031320394900175, https://ieeexplore.ieee.org/document/466858,
  https://www.sciencedirect.com/science/article/pii/S0262885697000127, https://dspace.mit.edu/handle/1721.1/6774,
  https://ieeexplore.ieee.org/document/655648]

draft: false

date: 2022-10-24T09:20:40-05:00
featured_image: ''
include_toc: true
markup: md
outputs: []
show_comments: false
toc: false
show_reading_time: true
---

# A summary of *Applying SVMs to Face Detection*

> Edgar Isuna; [DOI](https://doi.ieeecomputersociety.org/10.1109/5254.708428)

For the summary of the paper, go to the [Summary](#summary) section of this
article.

## Table of Contents

- [A summary of *Applying SVMs to Face Detection*](#a-summary-of-applying-svms-to-face-detection)
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

The essay *Applying SVMs to Face Detection* by Edgar Osuna (as part of the
larger *Support vector machine* collection of essays in the July/ August edition
of the 1998 IEEE Intelligent Systems magazine) \[1\] describes the usage of
Support Vector Machines (SVMs) to identify faces in static images and real time
systems. The work goes into detail about previous systems that attempted this
task, as well as a real time system that can classify images at 4 to 5 frames
per second.

### Category

> What type of paper is this work?

This paper is both a small systems essay, as well as a CV task analysis of the
state of the art when using this particular technique.

### Context

> What other *types* of papers is the work related to?

This essay is most similar to papers that discuss systems that implement face
detection.

### Contributions

> What are the author's main contributions?

The author's main contributions are a system that utilizes SVMs for real time
facial detection. Additionally, their contributions include a discuss of
previous systems that attempted this task.

______________________________________________________________________

## Second Pass

### Background Work

> What has been done prior to this paper?

Quote from the *Previous systems* section of the paper:

"Researchers have approached the face-detection problem with different
techniques in the last few years, including neural networks \[2\] \[3\],
detection of face features and use of geometrical constraints \[4\], density
estimation of the training data \[5\], labeled graphs \[6\], and clustering and
distribution-based modeling \[7\] \[8\]."

### Motivation

> Why should we care about this paper?

We should care about this essay as it proposes an SVM based solution for both
static image and real time face detection.

### Figures, Diagrams, Illustrations, and Graphs

> Are the axes properly labeled? Are results shown with error bars, so that
> conclusions are statistically significant?

The figures are clear and explained well through their captions. However, Table
2 uses a metric called "False Alarms" to measure the number of times the system
reported a "face" that wasn't a face. A more appropriate metric, such as recall,
would have been appropriate in this case.

### Clarity

> Is the paper well written?

The paper is well written, however, it can be improved upon. The biggest
complaint that I have is the usage of bullet points to describe tasks/ steps
that were taken to complete a task. Additionally, many bullet points contained
more than one sentence. I find it to be more appropriate for papers to utilize
bullet points for short, unordered lists. Most appropriately used when listing
off different techniques or definitions, which this essay does utilize. Aside
from that, the individual steps are written well and clearly, and seem to be
fairly reproducible.

### Relevant Work

> Mark relevant work for review

The following relevant work can be found in the [Citations](#citations) section
of this article.

- Detection and localization of faces on digital images \[2\]
- Human Face Detection in Visual Scenes \[3\]
- Human face detection in a complex background \[4\]
- Probabilistic visual learning for object detection \[5\]
- Determination of face position and pose with a learned representation based on
  labeled graphs \[6\]
- Learning and Example Selection for Object and Pattern Detection \[7\]
- Example-based learning for view-based human face detection \[8\]

### Author Assumptions

> What assumptions does the author(s) make? Are they justified assumptions?

The authors trained their system to identify vertically oriented, gray-scale
images of faces for their static image face detector. They make no mention as to
whether this detector is capable of identifying faces in off axis positions, or
if their system is capable enough to orient faces properly.

#### Correctness

> Do the assumptions seem valid?

Without understanding the availability of data sets at the time, this seems like
a valid assumption to make. However, simple data augmentation (such as rotating
the image) could've been done to increase the number of training examples of
faces not in the vertical orientation.

### Future Directions

> My own proposed future directions for the work

A re-implementation of their work, both on static images and real time image
capture, would be interesting to perform on devices such as cameras, Raspberry
Pis, or other low powered systems. Additionally, comparing the power draw
between an SVM based solution and one that is powered by DL would be interesting
as well.

______________________________________________________________________

## Summary

> A summary of the paper

The essay *Applying SVMS to Face Detection* by Edgar Osuna (as part of the
larger *Support vector machine* collection of essays in the July/ August edition
of the 1998 IEEE Intelligent Systems magazine) \[1\] describes the usage of
Support Vector Machines (SVMs) to identify faces in static images and real time
systems. The author goes into detail about existing systems that were powered by
non-SVM techniques, as well as presenting their own system (for both static
image and real time image capture) for face detection.

Their static image system only works on gray scale images of vertically aligned
faces. Additionally, they used a small data set to train the SVM. In doing so,
they limit the usage of the static image system to that specific domain, as well
as potentially creating a system that is unable to detect a face in all
potential cases (such as different ethnicity, lighting conditions, face
orientations, etc.).

Their real time image capture system works on full color images of vertically
aligned faces by using a combination of a skin detector and a "primitive" motion
detector. This system was capable of recognizing faces at 4 to 5 frames per
second.

______________________________________________________________________

## Summarization Technique

This paper was summarized using a modified technique proposed by S. Keshav in
his work *How to Read a Paper* \[0\].

## Citations
