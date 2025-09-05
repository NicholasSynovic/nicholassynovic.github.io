---
title: 'A summary of by SegNet: A Deep Convolutional Encoder-Decoder Architecture for Image Segmentation by Vijay Badrinarayanan et al.'
description: Posted in the IEEE TRANSACTIONS ON PATTERN ANALYSIS AND MACHINE INTELLIGENCE, 2017
summary: Posted in the IEEE TRANSACTIONS ON PATTERN ANALYSIS AND MACHINE INTELLIGENCE, 2017

categories: [summary]
citations: [https://doi.org/10.1145/1273445.1273458, https://doi.org/10.1109/TPAMI.2016.2644615, https://doi.org/10.1109/CVPR.2007.383157]

draft: false

date: 2022-12-04T13:06:29-06:00
featured_image: ''
include_toc: true
markup: md
outputs: []
show_comments: false
toc: false
show_reading_time: true
---

# A summary of *SegNet: A Deep Convolutional Encoder-Decoder Architecture for Image Segmentation*

> Vijay Badrinarayanan et al. IEEE TRANSACTIONS ON PATTERN ANALYSIS AND MACHINE
> INTELLIGENCE, 2017 [DOI](https://doi.org/10.1109/TPAMI.2016.2644615)

For the summary of the paper, go to the [Summary](#summary) section of this
article.

## Table of Contents

- [A summary of *SegNet: A Deep Convolutional Encoder-Decoder Architecture for Image Segmentation*](#a-summary-of-segnet-a-deep-convolutional-encoder-decoder-architecture-for-image-segmentation)
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

A model architecture for image segmentation of indoor and outdoor scenes that is
memory and computationally efficient does not exist.

### Motivation

> Why should we care about this paper?

Because it presents a model architecture and reference model that is memory and
computationally efficient for the purposes of image segmentation.

### Category

> What type of paper is this work?

This is a computer vision neural network architecture paper.

### Context

> What other *types* of papers is the work related to?

This paper is most closely related to works involving image segmentation
solutions that rely on an encoder-decoder style network.

### Contributions

> What are the author's main contributions?

The author's main contributions are a model architecture that is memory and
computationally efficient for the purposes of image segmentation, a reference
model of this architecture called SegNet, and an advancement of the
encoder-decoder style network architecture.

______________________________________________________________________

## Second Pass

> A proper read through of the paper is required to answer this

### Background Work

> What has been done prior to this paper?

Work has been done to develop image segmentation models using encoder-decoder
networks.

### Figures, Diagrams, Illustrations, and Graphs

> Are the axes properly labeled? Are results shown with error bars, so that
> conclusions are statistically significant?

The tables are clear for the most part. There are some where trying to
understand which model was the top performer is unclear. The segmentation
figures are not clear to me. It is difficult to tell the qualitative difference
between the output of different models.

### Clarity

> Is the paper well written?

This paper is dense. I'd say that about half of this paper is well written, but
technical sections of the paper mentions acronyms or domain specific knowledge
that are not defined.

### Relevant Work

> Mark relevant work for review

The following relevant work can be found in the [Citations](#citations) section
of this article.

2. M. Ranzato, F. J. Huang, Y. Boureau, and Y. LeCun, “Unsupervised learning of
   invariant feature hierarchies with applications to object recognition,” in
   Proc. IEEE Conf. Comput. Vis. Pattern Recognit., 2007

### Methodology

> What methodology did the author's use to validate their contributions?

The authors evaluated the performance of their architecture in both a simplified
and fully instanced bench marking.

In the simplified bench marking, they evaluated their SegNet-basic model (4
encoders, 4 decoders) against FCN-basic which mirrored their encoder design.
They bench marked the two against each other on the Pascal VOC 2012 challenge.
The metrics captured where the global and class average, mean intersection over
union, and semantic contour measure.

In the fully instanced bench marking, they evaluated SegNet against other models
on road and indoor scene segmentation. They compared SegNet against, FCN, FCN
(learned deconvolution), DeepLab-LargeFOV, DeepLab-LargeFOV-denseCRF, and
DeconvNet. They used the mean intersection over union and semantic contour
measure metrics to compare the models.

### Author Assumptions

> What assumptions does the author(s) make? Are they justified assumptions?

The authors assumed that less attention is being placed on smaller, more
computationally and memory efficient models for the purposes of semantic
segmentation. Additionally, that engineers want models of this type when
selecting from a pool of models.

#### Correctness

> Do the assumptions seem valid?

To me, yes. The smaller the model, or the more efficient it is, allows for the
engineers to evaluate models not just by performance, but by power consumption
or memory constrains which might be constrained.

### Future Directions

> My own proposed future directions for the work

I'd like to try and build SegNet and quantize it from float-16 to int-8 just to
see what would happen.

### Open Questions

> What open questions do I have about the work?

Why wasn't this model quantized? If memory efficiency was a concern, or
increasing the computation speed was desired, why utilize floating point values
everywhere and not just where it mattered most? Where are the comparisons of
memory usage and inference timing of different models compared to SegNet?

### Author Feedback

> What feedback would I give to the authors?

This paper is dense. There is a lot of information covered here. Because of
that, I would encourage a review of the paper to address spelling mistakes when
referencing different models, as well as enhancing figures by pointing out
specific areas where SegNet outperforms or is outperformed by other models.
Also, please report comparisons of memory usage and inference timings if you are
claiming that the SegNet architecture is more efficient that other
architectures.

______________________________________________________________________

## Summary

> A summary of the paper

The paper *SegNet: A Deep Convolutional Encoder-Decoder Architecture for Image
Segmentation* by Vijay Badrinarayanan et al. [1] introduces a novel model
architecture for semantic segmentation based off of an encoder-decoder design.
This architecture is designed around being computationally and memory efficient,
while accurate enough to be used in practice. They created a reference model
that implemented this model called SegNet that they then evaluated against
larger and SOTA segmentation models on road and indoor scene segmentation. While
SegNet is not always more accurate than the SOTA, the architecture it implements
significantly reduces memory usage and therefore increases inference time. No
metrics with respect to memory or inference time was reported in this work.

______________________________________________________________________

## Summarization Technique

This paper was summarized using a modified technique proposed by S. Keshav in
his work *How to Read a Paper* [0].

## Citations
