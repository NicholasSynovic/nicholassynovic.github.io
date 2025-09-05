---
title: 'A summary of SURF: Speeded Up Robust Features by Herbert Bay et al.'
description: Posted in ECCV 2006
summary: Posted in ECCV 2006

categories: [summary, Hessian Matrix, Interest Point, Integral Image, Robust Feature, Viewpoint Change]
citations: [https://doi.org/10.1145/1273445.1273458, http://link.springer.com/10.1007/11744023_32, https://doi.org/10.1109/CVPR.2004.1315206, https://doi.org/10.1007/BF00336961, https://doi.org/10.1023/B:VISI.0000029664.99615.94, https://doi.org/10.1109/TPAMI.2005.188, https://doi.org/10.1109/ICCV.1999.790410, https://doi.org/10.1109/ICCV.2001.937561]

draft: false

date: 2022-11-30T15:14:56-06:00
featured_image: ''
include_toc: true
markup: md
outputs: []
show_comments: false
toc: false
show_reading_time: true
---

# A summary of *SURF: Speeded Up Robust Features*

> Herbert Bay et al., 2006 [DOI](http://link.springer.com/10.1007/11744023_32)

For the summary of the paper, go to the [Summary](#summary) section of this
article.

## Table of Contents

- [A summary of *SURF: Speeded Up Robust Features*](#a-summary-of-surf-speeded-up-robust-features)
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

The authors aim to make a repeatable, robust, and fast image feature extractor
that outperforms previous SOTA feature extractors.

### Motivation

> Why should we care about this paper?

Because this paper builds off of SIFT and allows for even faster feature
extraction without additional computational cost by relying upon Hessian
matrices and integral images.

### Category

> What type of paper is this work?

This is an algorithms paper.

### Context

> What other *types* of papers is the work related to?

This work is related to papers regarding image retrieval, object recognition,
and image feature extraction.

### Contributions

> What are the author's main contributions?

Their main contributions is a SOTA algorithm for image feature extraction that
is fast due to their usage of the Hessian matrices and the integral image. The
Hessian matrices can be thought of as filters that are slid across the integral
image to identify features.

______________________________________________________________________

## Second Pass

> A proper read through of the paper is required to answer this

### Background Work

> What has been done prior to this paper?

Work has been done to create image feature extractors that are robust and
invariant to scale and rotation.

### Figures, Diagrams, Illustrations, and Graphs

> Are the axes properly labeled? Are results shown with error bars, so that
> conclusions are statistically significant?

All of the figures are clearly labeled and have good captions.

### Clarity

> Is the paper well written?

This paper is well written.

### Relevant Work

> Mark relevant work for review

The following relevant work can be found in the [Citations](#citations) section
of this article.

2. Ke, Y., Sukthankar, R.: PCA-SIFT: A more distinctive representation for local
   image descriptors. In: CVPR (2). (2004) 506 – 513
1. Koenderink, J.: The structure of images. Biological Cybernetics 50 (1984) 363
   370
1. Lowe, D.: Distinctive image features from scale-invariant keypoints, cascade
   filtering approach. IJCV 60 (2004) 91 – 110
1. Mikolajczyk, K., Schmid, C.: A performance evaluation of local descriptors.
   PAMI 27 (2005) 1615–1630
1. Lowe, D.: Object recognition from local scale-invariant features. In: ICCV.
   (1999)
1. Mikolajczyk, K., Schmid, C.: Indexing based on scale invariant interest
   points. In: ICCV. Volume 1. (2001) 525 – 531

### Methodology

> What methodology did the author's use to validate their contributions?

The authors compared the repeatability of the SURF descriptor (Fast-Hessian)
against DoG [6], Harris-Laplace [7], and Hessian-Laplace [7] across several
common bench marking images. Additionally, they measured the precision vs recall
of different algorithms including SURF-128 (a variation of SURF the authors
proposed that results in a higher dimensional feature space), SURF, SIFT [4],
GLOH [5], and PCA-SIFT [2] with respect to object recognition.

### Author Assumptions

> What assumptions does the author(s) make? Are they justified assumptions?

Probably the biggest assumption that I saw in the paper is that a scale and
image rotation invariance are the two biggest features to focus on when
designing a detector.

#### Correctness

> Do the assumptions seem valid?

No their assumption doesn't seem valid. In their own words, "Skew, anisotropic
scaling, and perspective effects are assumed to be second-order effects, that
are covered to some degree by the overall robustness of the descriptor," [1]
however, I would argue that with the advent of fish-eyed lenses on smartphones
and action-cameras, skew is now (and should be) a first-order priority.

### Future Directions

> My own proposed future directions for the work

Similar to the future work that I proposed
[here](distinctive-image-features-from-scale-invariant-keypoints.md), I'd like
to train a Deep Learning model on SURF descriptions and see what results I would
get with respect to object recognition. Would it be better than a CNN based
model?

### Open Questions

> What open questions do I have about the work?

How robust is this image on 180 degree images? 360 degree images? Does object
recognition or image retrieval fail at such extreme angles?

### Author Feedback

> What feedback would I give to the authors?

I really liked the work that I read here as well as the results of the paper.
However, as this work is under a patent, I would like to see the source code
open-sourced so that it could be improved upon and freely implemented in modern
solutions.

______________________________________________________________________

## Summary

> A summary of the paper

The paper *A summary of SURF: Speeded Up Robust Features* by Herbert Bay et al.
[1] describes an algorithm for extracting image features that are robust to
scale and rotation while also being faster and more repeatable than previous
SOTA methods. To achieve this, the authors utilized the source image's integral
image (the sum of all the pixels of a rectangular area of the image between the
origin and the pixel) to compute Hessian filters that a then slid across the
image at different scales to identify robust features. It should be noted that
the filters are increased in size and not the image. This allows for robust
features to be identified much faster than if the image was scaled down and the
same filter was slid across the image.

The authors compare SURF's repeatability by comparing it to other feature
descriptors, as well as its ability at object recognition against other feature
extractors using nearest neighbor algorithms.

The authors also propose U-SURF (Upright SURF), which is faster to compute as it
doesn't find features that are robust against rotation. Additionally, they
propose SURF-128 which is similar to vanilla SURF, but reports features in a
high dimensionality. This is computed in a similar time as SURF, but takes
longer to match features against as there are more features to account for.

______________________________________________________________________

## Summarization Technique

This paper was summarized using a modified technique proposed by S. Keshav in
his work *How to Read a Paper* [0].

## Citations
