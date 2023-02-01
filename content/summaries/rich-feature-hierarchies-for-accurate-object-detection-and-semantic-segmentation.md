---
title: A summary of Rich feature hierarchies for accurate object detection and semantic
  segmentation by Ross Girshick et al.
description: Posted in the Proceedings of CVPR, 2014
summary: Posted in the Proceedings of CVPR, 2014

categories: [summary, CVPR, 2014]
citations: [https://doi.org/10.1145/1273445.1273458, https://openaccess.thecvf.com/content_cvpr_2014/html/Girshick_Rich_Feature_Hierarchies_2014_CVPR_paper.html,
  https://doi.org/10.1109/CVPR.2005.177, https://doi.org/10.1109/TPAMI.2012.28, https://doi.org/10.1007/s11263-013-0620-5,
  https://doi.org/10.1007/978-3-642-15555-0_42, https://doi.org/10.1109/TPAMI.2011.231,
  https://openaccess.thecvf.com/content_cvpr_2014/html/Arbelaez_Multiscale_Combinatorial_Grouping_2014_CVPR_paper.html,
  https://doi.org/10.1007/978-3-642-40763-5_51]

draft: false

date: 2022-11-10T10:05:51-06:00
featured_image: ''
include_toc: true
markup: md
outputs: []
show_comments: false
toc: false
show_reading_time: true
---

# A summary of *Rich feature hierarchies for accurate object detection and semantic segmentation*

> Ross Girshick et al. CVPR, 2014
> [DOI](https://openaccess.thecvf.com/content_cvpr_2014/html/Girshick_Rich_Feature_Hierarchies_2014_CVPR_paper.html)

For the summary of the paper, go to the [Summary](#summary) section of this
article.

## Table of Contents

- [A summary of *Rich feature hierarchies for accurate object detection and semantic segmentation*](#a-summary-of-rich-feature-hierarchies-for-accurate-object-detection-and-semantic-segmentation)
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

This paper aims to achieve SOTA object detection by using a combination of
computer vision and deep learning techniques. This was chosen because object
detection on the PASCAL VOC 2012 dataset results have stagnated for the past two
years prior to publication.

### Motivation

> Why should we care about this paper?

We should care about this paper because the author's propose an efficient method
for performing object detection while also being more accurate than previous
results. Furthermore, they introduce the usage of fine-tuning a larger CV model
on a domain specific task in order to achieve better performance.

### Category

> What type of paper is this work?

This paper is both an algorithms paper and a CV model review paper.

### Context

> What other *types* of papers is the work related to?

This paper is related to works that talk about SOTA models, as well as papers
that talk about CV models for object detection.

### Contributions

> What are the author's main contributions?

Their main contributions are a proposed algorithm for performing object
detection using DL based region proposals prior to CNN analysis and the usage of
fine-tuning a larger model on a domain specific task to improve accuracy/
performance on the task.

______________________________________________________________________

## Second Pass

> A proper read through of the paper is required to answer this

### Background Work

> What has been done prior to this paper?

Work has been done in creating CNNs for the PASCAL VOC challenge, creating
algorithms for feature extraction for the purposes of object detection, creating
algorithms for region proposal (selective search was used for this paper), and
creating ensemble based DL models.

### Figures, Diagrams, Illustrations, and Graphs

> Are the axes properly labeled? Are results shown with error bars, so that
> conclusions are statistically significant?

All of the figures and tables are easy to read and are clear.

### Clarity

> Is the paper well written?

The paper is well written. It goes into great technical length about the
attributes of the model as well as how the model operates via an ablation study.

### Relevant Work

> Mark relevant work for review

The following relevant work can be found in the [Citations](#citations) section
of this article.

2. N. Dalal and B. Triggs. *Histograms of oriented gradients for human
   detection*. In CVPR, 2005.
3. B. Alexe, T. Deselaers, and V. Ferrari. *Measuring the objectness of image
   windows*. TPAMI, 2012.
4. J. Uijlings, K. van de Sande, T. Gevers, and A. Smeulders. *Selective search
   for object recognition*. IJCV, 2013.
5. I. Endres and D. Hoiem. *Category independent object proposals*. In ECCV,
   2010\.
6. J. Carreira and C. Sminchisescu. *CPMC: Automatic object segmentation using
   constrained parametric min-cuts*. TPAMI, 2012.
7. P. Arbel´aez, J. Pont-Tuset, J. Barron, F. Marques, and J. Malik. *Multiscale
   combinatorial grouping*. In CVPR, 2014.
8. D. Cires¸an, A. Giusti, L. Gambardella, and J. Schmidhuber. *Mitosis
   detection in breast cancer histology images with deep neural networks*. In
   MICCAI, 2013.

### Methodology

> What methodology did the author's use to validate their contributions?

The authors compared their model (R-CNN) with and without bounding boxes against
the previous SOTA models. Additionally, they conducted an ablation study on
their model to understand how it works internally.

### Author Assumptions

> What assumptions does the author(s) make? Are they justified assumptions?

The authors don't seem to make any assumptions.

#### Correctness

> Do the assumptions seem valid?

There were no assumptions that I could find.

### Future Directions

> My own proposed future directions for the work

I know that this work is the predecessor to many works that expand and improve
upon the R-CNN algorithm presented here. Therefore, I'd like to read those
papers.

### Open Questions

> What open questions do I have about the work?

What is the performance of other region proposal algorithms when used in the
R-CNN architecture?

### Author Feedback

> What feedback would I give to the authors?

This is a solid paper. I appreciate the alibation study conducted to understand
the model.

______________________________________________________________________

## Summary

> A summary of the paper

The paper *Rich feature hierarchies for accurate object detection and semantic
segmentation* by Ross Girshick et al. \[1\] introduces and evaluates the Region
Convolutional Neural Network (R-CNN) on variations of the PASCAL VOC dataset for
both object classification and semantic segmentation. They compare this
algorithm against previous SOTA models on that dataset as well. Additionally,
they perform an alibation study on their R-CNN model to understand how it works.

R-CNN works by using an ensemble approach. First, a DL model identifies regions
of interest of an image. These regions can number up into the tens of thousands.
These regions are then warped to fit a 224 x 224 pixel image. From this new
image, it is passed into a traditional CNN model for object detection or
semantic segmentation. By performing this region analysis first, the authors
reduce the amount of data that the CNN needs to process, and therefore increases
performance. Furthermore, the author's pruned their R-CNN model and found that
94% of parameters could be dropped post-training.

______________________________________________________________________

## Summarization Technique

This paper was summarized using a modified technique proposed by S. Keshav in
his work *How to Read a Paper* \[0\].

## Citations
