---
title: 'A summary of MobileNets: Efficient Convolutional Neural Networks for Mobile
  Vision Applications by Andrew G. Howard et al.'
description: Posted in arXiv, 2017
summary: Posted in arXiv, 2017

categories: [summary]
citations: [https://doi.org/10.1145/1273445.1273458, http://arxiv.org/abs/1704.04861,
  https://arxiv.org/abs/1602.07360, https://arxiv.org/abs/1412.5474, https://doi.org/10.1007/978-3-319-46493-0_32,
  https://openaccess.thecvf.com/content_ICCV_2017_workshops/w10/html/Wang_Factorized_Convolutional_Neural_ICCV_2017_paper.html,
  https://openaccess.thecvf.com/content_cvpr_2016/html/Wu_Quantized_Convolutional_Neural_CVPR_2016_paper.html,
  https://arxiv.org/abs/1403.1687]

draft: false

date: 2022-12-01T01:02:34-06:00
featured_image: ''
include_toc: true
markup: md
outputs: []
show_comments: false
toc: true
show_reading_time: true
---

# A summary of *MobileNets: Efficient Convolutional Neural Networks for Mobile Vision Applications*

> Andrew G. Howard et al. arXiv, 2017 [DOI](http://arxiv.org/abs/1704.04861)

For the summary of the paper, go to the [Summary](#summary) section of this
article.

## Table of Contents

- [A summary of *MobileNets: Efficient Convolutional Neural Networks for Mobile Vision Applications*](#a-summary-of-mobilenets-efficient-convolutional-neural-networks-for-mobile-vision-applications)
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

More and more CV models are getting better performance by "going deeper".
However, these models can not be run effeciently on mobile and low powered
devices. Therefore, a new class of models (MobileNets) needs to be developed in
order to accomodate for these low powered and resource constrained devices.

### Motivation

> Why should we care about this paper?

We should care about this paper as it introduces a new class of CV models
targetted at mobile and low powered devices (MobileNets) as well as a method for
creating these models to meet specific latency and size specifications through
the usage of two hyper parameters.

### Category

> What type of paper is this work?

This paper is a deep learning CV paper.

### Context

> What other *types* of papers is the work related to?

This work is most similar to papers focusing on CV model architectures and low
powered computer vision.

### Contributions

> What are the author's main contributions?

The author's main contributions are a new class of models for low powered
devices (MobileNets) and a methodology to generate these models targetting
specific sizes and latency requirements through the usage of two
hyperparameters.

______________________________________________________________________

## Second Pass

> A proper read through of the paper is required to answer this

### Background Work

> What has been done prior to this paper?

There has been work in developing small and effiecient CV models previously.
Additionally, work has been done to develop depthwise seperable convolutions
which are the backbone of this model class. Furthermore, work has been done in
the area of model compression and optimization.

### Figures, Diagrams, Illustrations, and Graphs

> Are the axes properly labeled? Are results shown with error bars, so that
> conclusions are statistically significant?

All of the figures are clear. However, not all of the charts are made clear on
their own. some of the charts use an unlabelled log scale that is described in
the captions of the figure.

### Clarity

> Is the paper well written?

This paper is well written.

### Relevant Work

> Mark relevant work for review

The following relevant work can be found in the [Citations](#citations) section
of this article.

2. F. N. Iandola, M. W. Moskewicz, K. Ashraf, S. Han, W. J. Dally, and K.
   Keutzer. Squeezenet: Alexnet-level accuracy with 50x fewer parameters and¡
   1mb model size. arXiv preprint arXiv:1602.07360, 2016.
3. J. Jin, A. Dundar, and E. Culurciello. Flattened convolutional neural
   networks for feedforward acceleration. arXiv preprint arXiv:1412.5474, 2014.
4. M. Rastegari, V. Ordonez, J. Redmon, and A. Farhadi. Xnornet: Imagenet
   classification using binary convolutional neural networks. arXiv preprint
   arXiv:1603.05279, 2016.
5. M. Wang, B. Liu, and H. Foroosh. Factorized convolutional neural networks.
   arXiv preprint arXiv:1608.04337, 2016.
6. J. Wu, C. Leng, Y. Wang, Q. Hu, and J. Cheng. Quantized convolutional neural
   networks for mobile devices. arXiv preprint arXiv:1512.06473, 2015.
7. L. Sifre. Rigid-motion scattering for image classification. PhD thesis, Ph.
   D. thesis, 2014.

### Methodology

> What methodology did the author's use to validate their contributions?

The authors trained and tested variations of their MobileNets on tasks such as
fine grained recognition, large scale geolocation, face attributes, object
detection, and face embeddings. They then evaluated the performance of their
models against VGG and Inception V2 and V3. Comparisons were made by measuring
the number of billion multiply-adds and million parameters, as well as the mean
average precision.

### Author Assumptions

> What assumptions does the author(s) make? Are they justified assumptions?

The largest assumption that I see is that MobileNets would be applicable for
mobile and low powered hardware. The reason I say this is that the paper doesn't
describe a test of running this model on a mobile device.

#### Correctness

> Do the assumptions seem valid?

No they do not. The name seems misleading without a proper test.

### Future Directions

> My own proposed future directions for the work

I'd like to test variations of MobileNets on modern smartphones, low powered
devices (i.e. Raspberry Pis, NVIDIA Jetson Nanos), and more powerful devices
(i.e. laptops) in order to see how far I can push a MobileNet to give real-time
(minimum 24 FPS) infrence without comprimising on accuracy.

### Open Questions

> What open questions do I have about the work?

Why wasn't a MobileNet variation tested on a mobile device?

### Author Feedback

> What feedback would I give to the authors?

Overall this was a good paper. I found the description of the depthwise
seperable convolutions a little confusing. Additionally, the naming of the
family models presented (MobileNets) is misleading to me as these models were
not tested on mobile devices.

______________________________________________________________________

## Summary

> A summary of the paper

The paper *MobileNets: Efficient Convolutional Neural Networks for Mobile Vision
Applications* by Andrew G. Howard et al. introduces a new class of models that
are designed to be small and fast (low latency) called MobileNets. MobileNets
are CNN based DV models that rely on depthwise seperable convultions to infrence
data. A depthwise seperable convolution occurs in two steps:

1. Each channel of the input data structure is analyzed using a 3 x 3 x 1
   filter. This is different than traditional CNN building blocks that analyze
   all of the channels in one pass using a 3 x 3 x N filter (with N being the
   number of filters).
2. The values from the aforementioned filters are multipled together and summed
   with a pointwise convolution that analyzes all of the channels. This
   pointwise convolution uses a 1 x 1 x N filter (with N being the number of
   filters).

By using depthwise seperable filters, MobileNets decrease their latency due to
the fewer number of multiply-add operations that they need to perform on the
data.

The authors tested the performance of MobileNets on a variety of tasks against
the VGG and Inception class of CV models, and found that MobileNets are both
smaller, faster, and nearly as accurate as these much larger models.

______________________________________________________________________

## Summarization Technique

This paper was summarized using a modified technique proposed by S. Keshav in
his work *How to Read a Paper* \[0\].

## Citations
