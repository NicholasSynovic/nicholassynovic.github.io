---
title: A summary of Distinctive Image Features from Scale-Invariant Keypoints by David
  G. Lowe
description: Posted in the International Journal of Computer Vision, 2004
summary: Posted in the International Journal of Computer Vision, 2004

categories: [summary, ICJV, 2004, invariant features, object recognition, scale invariance,
  image matching]
citations: [https://doi.org/10.1145/1273445.1273458, https://doi.org/10.1023/B:VISI.0000029664.99615.94]

draft: true

date: 2022-11-18T20:47:39-06:00
featured_image: ''
include_toc: true
markup: md
outputs: []
show_comments: false
toc: true
show_reading_time: true
---

# A summary of *Distinctive Image Features from Scale-Invariant Keypoints*

> David G. Lowe International Journal of Computer Vision, 2004
> [DOI](https://doi.org/10.1023/B:VISI.0000029664.99615.94)

For the summary of the paper, go to the [Summary](#summary) section of this
article.

## Table of Contents

- [A summary of *Distinctive Image Features from Scale-Invariant Keypoints*](#a-summary-of-distinctive-image-features-from-scale-invariant-keypoints)
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

This paper aims to address image matching challenges by finding scale invarient
features from images. These features perform well against images that are
subject to blurring and noise.

### Motivation

> Why should we care about this paper?

We should care about this paper as it presents an efficient method for
generating image featrues that are invariant to scale and rotation changes. This
allows for images to be taken in arbitrary locations and at different locations
to then be matched with similar objects in a different image. In other words, it
presents an effiecient way of generating image features that can be used to
compare how similar two images are regardless of scale and rotation differences.

### Category

> What type of paper is this work?

This is an algorithms paper focused on image matching and retireval.

### Context

> What other *types* of papers is the work related to?

This work is most similar to work discussing image feature extraction and image
matching and retrieval techniques.

### Contributions

> What are the author's main contributions?

Their main contributions were a methodology for extracting scale invarient image
features as well as methods for comparing features between images for the
purposes of image matching and retrieval.

______________________________________________________________________

## Second Pass

> A proper read through of the paper is required to answer this

### Background Work

> What has been done prior to this paper?

Work has been done to develop image feature extractors. These extractors were
initially used for stereo and short range motion tracking. However, they are now
capable of more complex tasks. These include image recognition and retrieval.
All of these feature extractors produce a representation of the image that can
be used to compare one image against another.

### Figures, Diagrams, Illustrations, and Graphs

> Are the axes properly labeled? Are results shown with error bars, so that
> conclusions are statistically significant?

All of the figures are clearly labelled. I do find the lines on the line charts
are a bit difficult to distinguish due to the usage of a tight dashed line. But
that's on me, not the paper.

### Clarity

> Is the paper well written?

The paper is well written, if a bit dense. There is an argument to be made that
this paper is two papers in one. One about a novel feature extraction technique,
and a second about image retreival with the usage of feature extractors.

### Relevant Work

> Mark relevant work for review

The following relevant work can be found in the [Citations](#citations) section
of this article.

2. Brown, M. and Lowe, D.G. 2002. Invariant features from interest point groups.
   In British Machine Vision Conference, Cardiff, Wales, pp. 656–665.
3. Carneiro, G. and Jepson, A.D. 2002. Phase-based local features. In European
   Conference on Computer Vision (ECCV), Copenhagen, Denmark, pp. 282–296.
4. Crowley,J.L.andParker,A.C.1984.Arepresentationforshapebased on peaks and
   ridges in the difference of low-pass transform. IEEE Trans. on Pattern
   Analysis and Machine Intelligence, 6(2):156–170.
5. Fergus, R., Perona, P., and Zisserman, A. 2003. Object class recognition by
   unsupervised scale-invariant learning. In IEEE Conference on Computer Vision
   and Pattern Recognition, Madison, Wisconsin, pp. 264–271.
6. Harris,C.andStephens,M.1988.A combined corner and edge detector. In Fourth
   Alvey Vision Conference, Manchester, UK, pp. 147–151.
7. Koenderink, J.J. 1984. The structure of images. Biological Cybernetics,
   50:363–396.

### Methodology

> What methodology did the author's use to validate their contributions?

For their feature extractor, they created a dataset of images and their
features, then performed transformations on images present in the dataset to
generate new features. With these variables, they were able to measure the
performance of their feature extractor and how well it was able to identify
invarient features. With respect to their testing on object recognition and
image retrieval, they utilized K Nearest Neighbor (KNN) algorithms to accomplish
this.

### Author Assumptions

> What assumptions does the author(s) make? Are they justified assumptions?

This work doesn't rely on the usage of Deep Neural Networks (DNNs) to learn the
representation of images. Because of this, their work relies on hand crafted
filters and algorithms to extract features. This could result in algorithmic
bias or generate results that are susceptible to the views of the author.

#### Correctness

> Do the assumptions seem valid?

Keeping in mind that this paper was published in 2004, this assumption seems
valid for the time. Due to the AI winter as well as the limited usage of GPUs
for the purposes of training DNNs, handcrafting feature extractors was a valid
usage.

### Future Directions

> My own proposed future directions for the work

While I can't say that image retrieval is of much interest to me, I would like
to explore how to perform object detection or image recognition using this
feature extractor.

### Open Questions

> What open questions do I have about the work?

The `Background` section of this paper mentioned the usage of feature detectors
for motion capture. Is that possible with this feature extractor? What does that
space look like today vs 2004 vs 1990s?

### Author Feedback

> What feedback would I give to the authors?

This is a great paper that introduces a novel technique for performing feature
extraction. However, it is a bit dense and could've been split into two seperate
papers. One being an algorithms paper presenting the feature extractor, and
another being a case study of feature extractor performance on many tasks.

______________________________________________________________________

## Summary

> A summary of the paper

______________________________________________________________________

## Summarization Technique

This paper was summarized using a modified technique proposed by S. Keshav in
his work *How to Read a Paper* \[0\].

## Citations
