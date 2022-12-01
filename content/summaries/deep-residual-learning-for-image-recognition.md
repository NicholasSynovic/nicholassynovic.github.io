---
title: A summary of Deep Residual Learning for Image Recognition by Kaiming He et
  al.
description: Posted in arXiv, 2015
summary: Posted in arXiv, 2015

categories: [summary]
citations: [https://doi.org/10.1145/1273445.1273458, http://arxiv.org/abs/1512.03385,
  https://doi.org/10.1109/CVPR.2007.383266, https://arxiv.org/abs/1505.00387, https://proceedings.neurips.cc/paper/2015/hash/215a71a12769b056c3c32e7299f1c5ed-Abstract.html,
  https://tinyurl.com/3t33bwde]

draft: false

date: 2022-12-01T00:29:40-06:00
featured_image: ''
include_toc: true
markup: md
outputs: []
show_comments: false
toc: true
show_reading_time: true
---

# A summary of *Deep Residual Learning for Image Recognition*

> Kaiming He et al. arXiv, 2015 [DOI](http://arxiv.org/abs/1512.03385)

For the summary of the paper, go to the [Summary](#summary) section of this
article.

## Table of Contents

- [A summary of *Deep Residual Learning for Image Recognition*](#a-summary-of-deep-residual-learning-for-image-recognition)
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

SOTA deep learning (DL) computer vision (CV) models are becoming increasingly
more common. The trend with these models is to make them deeper to get better
results. However, the deeper a model is, the harder it is to train due to
vanishing gradients, and the longer it takes to train it as there are more
parameters. Additionally, as the network gets deeper, the accuracy starts to
degrade. This paper aims to address the later two issues with training very
large networks for the purposes of image recognition.

### Motivation

> Why should we care about this paper?

Because it introduces a deep residual learning framework. This framework is
simple to implement, but allows for models to become far deeper than before due
to its usage of skip connections. These skip connections simply add the identity
of the previous residual learning building block to the output of the current
building block.

### Category

> What type of paper is this work?

This is a DL CV paper. It is also a CV framework and model paper.

### Context

> What other *types* of papers is the work related to?

This paper is related to works that aim to create better CV models.

### Contributions

> What are the author's main contributions?

Their main contributions is the deep residual learning framework and the SOTA
ResNet suite of models, as well as an understanding of how residual learning
works via shortcuts.

______________________________________________________________________

## Second Pass

> A proper read through of the paper is required to answer this

### Background Work

> What has been done prior to this paper?

Work has been done to explore skip connections and residual networks, as well as
creating other DL CV models.

### Figures, Diagrams, Illustrations, and Graphs

> Are the axes properly labeled? Are results shown with error bars, so that
> conclusions are statistically significant?

All of the figures are properly labeled and are clear to read.

### Clarity

> Is the paper well written?

The paper is well written.

### Relevant Work

> Mark relevant work for review

The following relevant work can be found in the [Citations](#citations) section
of this article.

2. F. Perronnin and C. Dance. Fisher kernels on visual vocabularies for image
   categorization. In CVPR, 2007.
3. R. K. Srivastava, K. Greff, and J. Schmidhuber. Highway networks.
   arXiv:1505.00387, 2015.
4. R. K. Srivastava, K. Greff, and J. Schmidhuber. Training very deep networks.
   1507.06228, 2015.
5. V. Nair and G. E. Hinton. Rectified linear units improve restricted boltzmann
   machines. In ICML, 2010.

### Methodology

> What methodology did the author's use to validate their contributions?

The authors compared their ResNet family of models against CV models that did
not adhere to the residual learning framework, along with other SOTA models, on
image classification on the ImageNet and CIFAR-10 datasets, as well as object
detection on the PASCAL and MS COCO datasets.

### Author Assumptions

> What assumptions does the author(s) make? Are they justified assumptions?

The authors assumed that better models can be made by just adding more layers.

#### Correctness

> Do the assumptions seem valid?

Not entirely. Better architected models rely on more layers yes. However, better
models need more data to perform better as well. Additionally, the usage of
neural compressors or optimizers can adjust the performance of a CV model as
well.

### Future Directions

> My own proposed future directions for the work

I'd like to see how far I can push the ResNet model family with respect to
quantization and optimization in order to run these extremely deep models on
mobile or low powered hardware.

### Open Questions

> What open questions do I have about the work?

What was the system specification that they used to train the ResNet model
family on?

### Author Feedback

> What feedback would I give to the authors?

This was a very clear and concise paper on a model architecture.

______________________________________________________________________

## Summary

> A summary of the paper

The paper, *Deep Residual learning for Image Recognition* by Kaiming He et al.
\[1\] introduced the ResNet family of DL CV models. These models are based on a
deep residual learning framework that makes usage of shortcut connections
(taking the identity function of the previous deep residual block and summing it
to the output of the current residual learning block) and the ReLU activation
function to reduce the total number of parameters within the model, while
dramatically increasing the depth in comparison to former SOTA methods (i.e.
VGG). The authors found that their deep models achieve SOTA performance on both
Object Detection (using the Faster-RCNN method) and Image Recognition compared
to existing SOTA models. Furthermore, they found that the deeper the network,
the more accurate and less error prone it is with respect to image recognition.

______________________________________________________________________

## Summarization Technique

This paper was summarized using a modified technique proposed by S. Keshav in
his work *How to Read a Paper* \[0\].

## Citations
