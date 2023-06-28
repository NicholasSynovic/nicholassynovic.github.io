---
title: A summary of Large-Scale Image Retrieval with Attentive Deep Local Features
  by Hyeonwoo Noh et al.
description: Posted in ICCV 2017
summary: Posted in ICCV 2017

categories: [summary, landmark image dataset, attention mechanism, network layers,
  keypoint detectors, geometric verification, large-scale dataset, Google-Landmarks
      dataset, variable scales, global descriptors, local descriptors, large-scale
      image retrieval, attentive local feature descriptor, convolutional neural networks,
  image-level annotations, attentive deep local features, feature matching, DELE]
citations: [https://doi.org/10.1145/1273445.1273458, https://doi.org/10.1109/ICCV.2017.374,
  https://doi.org/10.1007/978-3-319-46466-4_15, https://doi.org/10.1007/978-3-319-46448-0_1,
  https://patents.google.com/patent/US8098938B1/en, https://arxiv.org/abs/0804.4457,
  https://doi.org/10.1007/978-3-319-46466-4_28, 
      https://openaccess.thecvf.com/content_cvpr_2016/html/Arandjelovic_NetVLAD_CNN_Architecture_CVPR_2016_paper.html,
  https://doi.org/10.1109/CVPR.2010.5540039, https://doi.org/10.1109/TPAMI.2011.235]

draft: false

date: 2022-11-30T16:14:49-06:00
featured_image: ''
include_toc: true
markup: md
outputs: []
show_comments: false
toc: false
show_reading_time: true
---

# A summary of *Large-Scale Image Retrieval with Attentive Deep Local Features*

> Hyeonwoo Noh et al. ICCV, 2017 [DOI](https://doi.org/10.1109/ICCV.2017.374)

For the summary of the paper, go to the [Summary](#summary) section of this
article.

## Table of Contents

- [A summary of *Large-Scale Image Retrieval with Attentive Deep Local Features*](#a-summary-of-large-scale-image-retrieval-with-attentive-deep-local-features)
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

The authors intend to address the problem of image retrieval when images are
occuleded or have objects blocking the subject by taking a weakly supervised
Deep Learning (DL) approach. Additionally, they propose a large scale dataset
that would assist the image retrieval community in creating new SOTA models.

### Motivation

> Why should we care about this paper?

We should care about this paper because it proposes a SOTA method for generating
robust image features using a DL approach. Additionally, it is the paper that
proposes the large scale Google-Landmarks dataset.

### Category

> What type of paper is this work?

This paper is a deep learnign computer vision paper as well as a datasets
release paper.

### Context

> What other *types* of papers is the work related to?

This work is related to image feature extraction, image retrieval, computer
vision, and deep learning computer vision.

### Contributions

> What are the author's main contributions?

Their main contributions are a SOTA deep learning computer vision model for
image retireval as well as a large scale dataset for training similar image
retrieval models.

______________________________________________________________________

## Second Pass

> A proper read through of the paper is required to answer this

### Background Work

> What has been done prior to this paper?

Work has been done to create both hand crafted and DL solutions to image
retrieval and image feature extraction.

### Figures, Diagrams, Illustrations, and Graphs

> Are the axes properly labeled? Are results shown with error bars, so that
> conclusions are statistically significant?

All figures are properly labeled and well explained.

### Clarity

> Is the paper well written?

This paper is well written.

### Relevant Work

> Mark relevant work for review

The following relevant work can be found in the [Citations](#citations) section
of this article.

2. A. Gordo, J. Almazan, J. Revaud, and D. Larlus. Deep Image Retrieval:
   Learning Global Representations for Image Search. In Proc. ECCV, 2016.
3. F. Radenovi ́ c, G. Tolias, and O. Chum. CNN Image Retrieval Learns from BoW:
   Unsupervised Fine-Tuning with Hard Examples. In Proc. ECCV, 2016.
4. U. Buddemeier and H. Neven. Systems and Methods for Descriptor Vector
   Computation, 2012. US Patent 8,098,938.
5. H. Neven, G. Rose, and W. G. Macready. Image Recognition with an Adiabatic
   Quantum Computer I. Mapping to Quadratic Unconstrained Binary Optimization.
   arXiv:0804.4457, 2008.
6. K. M. Yi, E. Trulls, V. Lepetit, and P. Fua. LIFT: Learned Invariant Feature
   Transform. In Proc. ECCV, 2016.
7. R. Arandjelovi ́ c, P. Gronat, A. Torii, T. Pajdla, and J. Sivic. NetVLAD:
   CNN Architecture for Weakly Supervised Place Recognition. In Proc. CVPR,
   2016\.
8. H. J ́ egou, M. Douze, C. Schmidt, and P. Perez. Aggregating Local
   Descriptors into a Compact Image Representation. In Proc. CVPR, 2010.
9. H. J ́ egou, F. Perronnin, M. Douze, J. Sanchez, P. Perez, and C. Schmid.
   Aggregating Local Image Descriptors into Compact Codes. IEEE Transactions on
   Pattern Analysis and Machine Intelligence, 34(9), 2012.

### Methodology

> What methodology did the author's use to validate their contributions?

The authors compared variations of DELF against SOTA image retrieval techniques
including CONGAS \[4, 5\], DIR \[2\], siaMAC \[3\] and LIFT \[6\] and graphed
precision vs recall on the Google Landmarks dataset and the accuracy of the same
methods on smaller datasets.

### Author Assumptions

> What assumptions does the author(s) make? Are they justified assumptions?

That GPS coordinates were a useful feature to include in the Google Landmarks
dataset.

#### Correctness

> Do the assumptions seem valid?

I found it interesting that the authors included the GPS coordinates of images
selected for the Google Landmarks dataset. I'm not sure how useful this is for
image retrieval tasks as it relies upon image features, rather than resolving
GPS coordinates. While the authors used it for validating the ground truth
labels for the landmarks, actual usage for the purposes of image retrieval
alludes me.

### Future Directions

> My own proposed future directions for the work

I'd like to compare this result to DL models trained on both
[SURF](surf-speeded-up-robust-features.md) and
[SIFT](distinctive-image-features-from-scale-invariant-keypoints.md) feature
descriptions.

### Open Questions

> What open questions do I have about the work?

Why was ResNet-50 choosen as the base model? The Google Landmarks dataset has
one million images, but only ~13,000 landmarks (~77 images per landmark). Is
there bias as to where the landmarks are choosne from? Is that enough landmarks
to train a DL model for the purposes of image feature description?

### Author Feedback

> What feedback would I give to the authors?

A solid paper, however the discussion of the Google Landmarks dataset left me
wanting more that, in my opinion, could've been published in a blog post.

______________________________________________________________________

## Summary

> A summary of the paper

The paper *Large-Scale Image Retrieval with Attentive Deep Local Features* by
Hyeonwoo Noh et al. discusses both a new image retrieval method that achieves
SOTA performance based off of ResNet-50 (DELF), and an image retrieval dataset
(Google Landmarks) to create similar models. DELF aims to work as an image
feature descriptor that is robust to occulusion and background clutter. DELF
achieves SOTA performance on the Google Landmarks dataset compared against
previous SOTA methods including CONGAS \[4, 5\], DIR \[2\], siaMAC \[3\] and
LIFT \[6\]. Additionally, DELF is more accurate the aforementioned methods on
smaller, traditional datasets.

______________________________________________________________________

## Summarization Technique

This paper was summarized using a modified technique proposed by S. Keshav in
his work *How to Read a Paper* \[0\].

## Citations
