---
title: 'A summary of Faster R-CNN: Towards Real-Time Object Detection with Region
  Proposal Networks by Shaoqing Ren et al.'
description: Posted in the IEEE Transactions on Patterna Analysis and Machine Intelligence,
  2017
summary: Posted in the IEEE Transactions on Patterna Analysis and Machine Intelligence,
  2017

categories: [summary]
citations: [https://doi.org/10.1145/1273445.1273458, https://doi.org/10.1109/TPAMI.2016.2577031]

draft: false

date: 2022-12-01T21:54:52-06:00
featured_image: ''
include_toc: true
markup: md
outputs: []
show_comments: false
toc: true
show_reading_time: true
---

# A summary of *Faster R-CNN: Towards Real-Time Object Detection with Region Proposal Networks*

> Shaoqing Ren et al. Posted in the IEEE Transactions on Patterna Analysis and
> Machine Intelligence, 2017 [DOI](https://doi.org/10.1109/TPAMI.2016.2577031)

For the summary of the paper, go to the [Summary](#summary) section of this
article.

## Table of Contents

- [A summary of *Faster R-CNN: Towards Real-Time Object Detection with Region Proposal Networks*](#a-summary-of-faster-r-cnn-towards-real-time-object-detection-with-region-proposal-networks)
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

Fast R-CNN is able to perform fast infrencing on an image for object detection
*after the region proposal step has been complete*. Therefore, if one could
improve the speed at which region proposal occurs at, then Fast R-CNN should
become even faster. Additionally, region proposal methods rely on handcrafted
features that are slow to use and biased towards their implementor. Furthermore,
while work regarding region proposal is typically done on the CPU,
re-engineering region proposal methods on the GPU only masks the underlying
algorithmic problem and implementation, and does not resolve the issue.
Therefore, a new approach must be taken to solve this issue.

### Motivation

> Why should we care about this paper?

We should care about this work as it proposes a Region Proposal Network (RPN)
that relies on deep learning (DL) techniques to identify the regions of
interest. Additionally, the authors were able to pass these into Fast R-CNN
almost cost free and were therefore able to improve both the training and
infrencing time.

### Category

> What type of paper is this work?

This paper is an algorithms and CV paper.

### Context

> What other *types* of papers is the work related to?

This paper is related to works regarding object detection and region proposal
networks.

### Contributions

> What are the author's main contributions?

The author's main contributions are the development of the Region Proposal
Network (RPN), methodologies for including proposed regions within Fast R-CNN
from an RPN almost cost free, and a system that can detect objects at 5 to 17
FPS.

______________________________________________________________________

## Second Pass

> A proper read through of the paper is required to answer this

### Background Work

> What has been done prior to this paper?

Work has been done to hand create algorithms and filters for region proposal, as
well as DL techniques for identifying regions of interest. Additionally, work
has been done with respect to the shared computation of convolutions.

### Figures, Diagrams, Illustrations, and Graphs

> Are the axes properly labeled? Are results shown with error bars, so that
> conclusions are statistically significant?

The tables and figures are clear.

### Clarity

> Is the paper well written?

This paper is understandable.

### Relevant Work

> Mark relevant work for review

The following relevant work can be found in the [Citations](#citations) section
of this article.

### Methodology

> What methodology did the author's use to validate their contributions?

The authors compare the number of proposals made as well as the infrence rate
(measured in FPS) of RPN + Fast R-CNN on both the VGG and ZF models.
Additionally, they compared RPN against the Selective Search (SS) region
propsasl technique on VGG. They also compared the one stage and two stage object
detection using RPN on the ZF model.

### Author Assumptions

> What assumptions does the author(s) make? Are they justified assumptions?

Their assumption that RPN is a ubiquotous technique regardless of model
architecture when combined with Fast R-CN.

#### Correctness

> Do the assumptions seem valid?

Maybe? The biggest concern that I see with that RPNs are reliant upon Fast R-CNN
to operate properly. This sounds like a limitation of the network for a
particualar task and may be difficult to incorporate in future works.

### Future Directions

> My own proposed future directions for the work

I'd like to explore RPN usage in model architecutres that do not utilize Fast
R-CNN.

### Open Questions

> What open questions do I have about the work?

VGG was used as the base model for both this work and Fast R-CNN paper. Why is
that? Additionally, this paper calls out reengineering region proposal solutions
to target the GPU to not solve the underlying problem, but the authors did not
specify if they made their solution run a GPU. Are RPNs more performant on GPUs?

### Author Feedback

> What feedback would I give to the authors?

This was a good paper. I found the writing style to be very terse which I wasn't
a fan of as I find it a little boring. This is a personal preference and not a
demerit on the content of the paper nor the explanations given.

______________________________________________________________________

## Summary

> A summary of the paper

The paper, *Faster R-CNN: Towards Real-Time Object Detection with Region
Proposal Networks* by Shaoqing Ren et al. \[1\] introduces the Region Proposal
Network (RPN) architecture for finding image region proposals for the purposes
of object detection, specifically with the [Fast R-CNN](fast-r-cnn.md) method.
RPNs are a convolutional neural network (CNN) that learns region proposals end
to end. The output of this network can be fed into an object detection model or
be incorporated as a one shot method directly with an existing model.

To do so:

1. An RPN is trained having the same number of convolutional layers as the
   target model on the same dataset.
2. A CNN using Fast R-CNN is trained on object detection using the regions
   proposed from the RPN.
3. The detection network initalizes the RPN network, but the RPN's convolutional
   layers are fixed. This then only trains the RPN's unique layers.
4. The detection network fixes its CNN layers, and fine tunes its unique layers.

By doing this, both the RPN and the Object Detection network now share the same
convolutional layers. This forms a unified network that allows for more accurate
region proposals.

______________________________________________________________________

## Summarization Technique

This paper was summarized using a modified technique proposed by S. Keshav in
his work *How to Read a Paper* \[0\].

## Citations
