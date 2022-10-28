---
title: A summary of Learning Deep Features for Discriminative Localization by Bolei
  Zhou et al.
description: A summary of Learning Deep Features for Discriminative Localization by
  Bolei Zhou et al.
summary: A summary of Learning Deep Features for Discriminative Localization by Bolei
  Zhou et al.

categories: [summary, CNN, DL, object detection, cam, class activation mapping]
citations: [https://doi.org/10.1145/1273445.1273458, http://arxiv.org/abs/1512.04150,
  https://doi.org/10.1109/WACV.2016.7477688, https://doi.org/10.1109/TPAMI.2016.2535231,
  https://openaccess.thecvf.com/content_cvpr_2014/html/Oquab_Learning_and_Transferring_2014_CVPR_paper.html,
  https://openaccess.thecvf.com/content_cvpr_2015/html/Oquab_Is_Object_Localization_2015_CVPR_paper.html,
  https://doi.org/10.1007/978-3-319-10590-1_53, https://arxiv.org/abs/1412.6856, https://arxiv.org/abs/1312.4400,
  https://doi.org/10.48550/arXiv.1409.4842]

draft: false

date: 2022-10-24T14:44:26-05:00
featured_image: ''
include_toc: true
markup: md
outputs: []
show_comments: false
toc: true
show_reading_time: true
---

# A summary of *Learning Deep Features for Discriminative Localization*

> Bolei Zhou et al.; [DOI](http://arxiv.org/abs/1512.04150)

For the summary of the paper, go to the [Summary](#summary) section of this
article.

## Table of Contents

- [A summary of *Learning Deep Features for Discriminative Localization*](#a-summary-of-learning-deep-features-for-discriminative-localization)
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

The paper *Learning Deep Features for Discriminative Localization* by Bolei Zhou
et al. \[1\] describes using the global average pooling layer of CNNs to not
only regularize data, but also to localize objects in an image **even if the
network wasn't trained for object detection**. The authors propose a method for
object localization that involves a simple modification to the layer to generate
what they call "class activation maps" (CAMs), which are heat maps of where the
CNN is "looking" at an image for labeling. The hotter the heat map, the more
focus the CNN is putting on that specific image region.

The authors go into detail as to how one would accomplish this with a
weakly-supervised object localization method, and its applications towards deep
features for generic localization, fine-grained recognition, and pattern
discovery. They conclude with visualizing class specific units.

Their technique accomplishes object localization in a single forward pass on
existing CNN models that utilize a global average pooling layer.

### Category

> What type of paper is this work?

This paper is a CNN understanding and technique paper. It discusses a method for
understanding what a CNN is looking at as well as expanding the usage of image
classifiers for object localization.

### Context

> What other *types* of papers is the work related to?

This paper is related to works involving object localization, image
classification, CNNs, and Deep Learning papers.

### Contributions

> What are the author's main contributions?

The author's main contribution is a method for modifying the global average
pooling layer in CNNs to perform object localization in a single forward pass.

______________________________________________________________________

## Second Pass

### Background Work

> What has been done prior to this paper?

There has been work done in utilizing weakly-supervised learning to perform
object localization. However, these works either don't evaluate the object
localization task, or utilize multiple passes to perform the task.

There has been numerous work that has gone into visualizing what occurs within a
CNN. Additionally, there has been work that has looked at the global *max*
pooling layer, however, this work is the first to utilize the global *average*
layer.

### Motivation

> Why should we care about this paper?

We should care about this paper as it provides a methodology of utilizing
existing CNNs trained on image classification to perform object localization
tasks "for free". In other words, this paper presents a methodology for object
localization by reusing existing SOTA CNNs.

### Figures, Diagrams, Illustrations, and Graphs

> Are the axes properly labeled? Are results shown with error bars, so that
> conclusions are statistically significant?

All of the figures and tables are labeled clearly, have detailed captions, and
make sense with respect to the paper.

### Clarity

> Is the paper well written?

The paper is well written.

### Relevant Work

> Mark relevant work for review

The following relevant work can be found in the [Citations](#citations) section
of this article.

- Self-taught object localization with deep networks \[2\]
- Weakly supervised object localization with multi-fold multiple instance
  learning \[3\]
- Learning and transferring mid-level image representations using convolutional
  neural networks \[4\]
- Is object localization for free? weakly-supervised learning with convolutional
  neural networks \[5\]
- Visualizing and understanding convolutional networks \[6\]
- Object detectors emerge in deep scene CNNs \[7\]
- Network in network \[8\]
- Going deeper with convolutions \[9\]

### Future Directions

> My own proposed future directions for the work

I would love to take this work and apply it to my current research in low
powered computer vision. By utilizing larger networks to localize where in a
static scene the object of interest is most likely to be in (for example, a
static video of a bird sitting on a wire), I can pass in this mapping into a CNN
to specifically be interested in that region of the video/ image. Additionally,
by figuring out where a larger CNN is localizing data, I can then mask out any
cold area of the image prior to analysis by a smaller CNN.

______________________________________________________________________

## Summary

> A summary of the paper

The paper *Learning Deep Features for Discriminative Localization* by Bolei Zhou
et al. \[1\] discusses a weakly supervised method of performing object
localization on existing CNN models. Their method involves replacing the fully
connected layer at the end of a CNN performing image classification, with a
global average pooling layer into a Softmax layer. This is so that the models
original functionality is not cut from the new model. However, the global
average pooling layer is modified so that a heat map can be extracted focusing
on what the CNN is focusing on prior to labeling the image.

Previous work involved the usage of weakly supervised CNNs, but relied on global
max pooling. Additional work utilized deconvolutional layers to perform a
similar task.

______________________________________________________________________

## Summarization Technique

This paper was summarized using a modified technique proposed by S. Keshav in
his work *How to Read a Paper* \[0\].

## Citations
