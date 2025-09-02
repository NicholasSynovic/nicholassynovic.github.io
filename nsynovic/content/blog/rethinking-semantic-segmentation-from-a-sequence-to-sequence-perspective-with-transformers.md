---
title: A summary of Rethinking Semantic Segmentation from a Sequence-to-Sequence Perspective
  with Transformers by Sixiao Zheng et al.
description: Posted in the CVPR, 2021
summary: Posted in the CVPR, 2021

categories: [summary]
citations: [https://doi.org/10.1145/1273445.1273458, https://doi.org/10.1109/CVPR46437.2021.00681]

draft: false

date: 2022-12-04T14:12:14-06:00
featured_image: ''
include_toc: true
markup: md
outputs: []
show_comments: false
toc: false
show_reading_time: true
---

# A summary of *Rethinking Semantic Segmentation from a Sequence-to-Sequence Perspective with Transformers*

> Sixiao Zheng et al. CVPR, 2021
> [DOI](https://doi.org/10.1109/CVPR46437.2021.00681)

For the summary of the paper, go to the [Summary](#summary) section of this
article.

## Table of Contents

- [A summary of *Rethinking Semantic Segmentation from a Sequence-to-Sequence Perspective with Transformers*](#a-summary-of-rethinking-semantic-segmentation-from-a-sequence-to-sequence-perspective-with-transformers)
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

This paper aims to develop a model architecture based off of the usage of the
Transformer architecture for the purposes of semantic segmentation.

### Motivation

> Why should we care about this paper?

Because the reference model implemented in this paper achieved SOTA results on a
variety of datasets as well as achieving first place on the ADE20K test server
leader board the day that it was released.

### Category

> What type of paper is this work?

This paper is a semantic segmentation model architecture paper.

### Context

> What other *types* of papers is the work related to?

This paper is most closely related to works within the CV domain that use the
Transformer architecture as well as papers that develop SOTA architectures for
semantic segmentation.

### Contributions

> What are the author's main contributions?

The authors main contribution are a CV model architecture based on Transformers
that achieves SOTA performance on several datasets.

______________________________________________________________________

## Second Pass

> A proper read through of the paper is required to answer this

### Background Work

> What has been done prior to this paper?

Work has been done to develop semantic segmentation models that rely on FCN
style architectures, as well as on CV models that rely on the Transformer
architecture to perform image classification.

### Figures, Diagrams, Illustrations, and Graphs

> Are the axes properly labeled? Are results shown with error bars, so that
> conclusions are statistically significant?

The figures and tables are clear and easy to understand.

### Clarity

> Is the paper well written?

This is a well written paper.

### Relevant Work

> Mark relevant work for review

The following relevant work can be found in the [Citations](#citations) section
of this article.

2. Zihang Dai, Zhilin Yang, Yiming Yang, Jaime Carbonell, Quoc V. Le, and Ruslan
   Salakhutdinov. Transformer-XL: Attentive language models beyond a
   fixed-length context. In ACL, 2019.
3. Zihang Dai, Zhilin Yang, Yiming Yang, Jaime Carbonell, Quoc V. Le, and Ruslan
   Salakhutdinov. Transformer-XL: Attentive language models beyond a
   fixed-length context. In ACL, 2019.

### Methodology

> What methodology did the author's use to validate their contributions?

They evaluated their model against other SOTA models on the Cityscapes, ADE20K,
and Pascal Context datasets.

### Author Assumptions

> What assumptions does the author(s) make? Are they justified assumptions?

Their assumption is that the FCN architecture is not the best performing
architecture for semantic segmentation tasks.

#### Correctness

> Do the assumptions seem valid?

No. While their model (SETR) does achieve SOTA performance on semantic
segmentation tasks using the Transformer architecture, this alone does not mean
that the FCN architecture is dead. Rather, this paper just shows that
Transformers can be used for this task.

### Future Directions

> My own proposed future directions for the work

Before working with this paper, I need to better understand what a Transformer
is and how to use one.

### Open Questions

> What open questions do I have about the work?

It was mentioned that Transformers have a quadratic complexity. This, to me,
sounds like they are unusable on low powered devices. Can you compress or
quantize these types of models?

### Author Feedback

> What feedback would I give to the authors?

I liked this paper. I thought it was interesting and exciting to hear that there
is a potential for a paradigm shift. If you are going to report that you were
first on the leader board for some competition, it would also be good to know
how long your model held onto that spot.

______________________________________________________________________

## Summary

> A summary of the paper

The paper *Rethinking Semantic Segmentation from a Sequence-to-Sequence
Perspective with Transformers* by Sixiao Zheng et al. presents the idea of using
the Transformer architecture for the purposes of semantic segmentation. In order
to do this, the authors describe in detail how to transform an image into a
suitable format for a transformer to understand. Additionally, they evaluate
their model (SETR) on three different semantic segmentation datasets and
achieved SOTA scores on all of them. However, SETR doesn't achieve SOTA overall.
SETR was first on the ADE20K test server leader board the day that it was
released though.

This paper challenges the usage of FCN's as the primary architecture for
semantic segmentation.

______________________________________________________________________

## Summarization Technique

This paper was summarized using a modified technique proposed by S. Keshav in
his work *How to Read a Paper* \[0\].

## Citations
