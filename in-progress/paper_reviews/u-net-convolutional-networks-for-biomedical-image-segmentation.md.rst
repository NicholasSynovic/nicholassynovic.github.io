--------------

title: ‘A summary of U-Net: Convolutional Networks for Biomedical Image
Segmentation by Olaf Ronneberger et al.' description: Posted in arXiv,
2015 summary: Posted in arXiv, 2015

categories: [summary, arXiv, 2015] citations:
[https://doi.org/10.1145/1273445.1273458,
http://arxiv.org/abs/1505.04597]

draft: false

date: 2022-12-03T15:05:16-06:00 featured_image: '' include_toc: true markup: md outputs: [] show_comments: false toc: false show_reading_time: true
---------------------------------------------------------------------------------------------------------------------------------------------------

A summary of *U-Net: Convolutional Networks for Biomedical Image Segmentation*
==============================================================================

   Olaf Ronneberger et al. arXiv, 2015
   `DOI <http://arxiv.org/abs/1505.04597>`__

For the summary of the paper, go to the `Summary <#summary>`__ section
of this article.

Table of Contents
-----------------

- `A summary of U-Net: Convolutional Networks for Biomedical Image
  Segmentation <#a-summary-of-u-net-convolutional-networks-for-biomedical-image-segmentation>`__

  - `Table of Contents <#table-of-contents>`__
  - `First Pass <#first-pass>`__

    - `Problem <#problem>`__
    - `Motivation <#motivation>`__
    - `Category <#category>`__
    - `Context <#context>`__
    - `Contributions <#contributions>`__

  - `Second Pass <#second-pass>`__

    - `Background Work <#background-work>`__
    - `Figures, Diagrams, Illustrations, and
      Graphs <#figures-diagrams-illustrations-and-graphs>`__
    - `Clarity <#clarity>`__
    - `Relevant Work <#relevant-work>`__
    - `Methodology <#methodology>`__
    - `Author Assumptions <#author-assumptions>`__

      - `Correctness <#correctness>`__

    - `Future Directions <#future-directions>`__
    - `Open Questions <#open-questions>`__
    - `Author Feedback <#author-feedback>`__

  - `Summary <#summary>`__
  - `Summarization Technique <#summarization-technique>`__
  - `Citations <#citations>`__

--------------

First Pass
----------

   Read the title, abstract, introduction, section and sub-section
   headings, and conclusion

Problem
~~~~~~~

   What is the problem addressed in the paper?

The problem addressed in this paper is to develop a fully convolutional
semantic segmentation model capable of learning from a small number of
training examples in a short period of time.

Motivation
~~~~~~~~~~

   Why should we care about this paper?

We should care about this paper because it builds off of the ideas of a
fully convolutional neural network for the purpose of semantic
segmentation, but introduces training techniques to reduce the number of
training examples needed as well as a novel architecture to support
training on few examples.

Category
~~~~~~~~

   What type of paper is this work?

This is a semantic segmentation computer vision work.

Context
~~~~~~~

   What other *types* of papers is the work related to?

This work is most closely related to papers that discuss the fully
convolutional solutions to the semantic segmentation task.

Contributions
~~~~~~~~~~~~~

   What are the author's main contributions?

Their main contributions are a novel architecture designed built around
semantic segmentation and a fully convolutional architecture.
Additionally, they discuss how they utilized data augmentation and
elastic deformation to increase the amount of training data.

--------------

Second Pass
-----------

   A proper read through of the paper is required to answer this

Background Work
~~~~~~~~~~~~~~~

   What has been done prior to this paper?

Work has been done to develop fully convolutional neural networks, to
develop fully convolutional semantic segmentation models, and the
development of data augmentation techniques.

Figures, Diagrams, Illustrations, and Graphs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

   Are the axes properly labeled? Are results shown with error bars, so
   that conclusions are statistically significant?

The figures are clear and easy to read.

Clarity
~~~~~~~

   Is the paper well written?

This is a well written paper that is easy to follow.

Relevant Work
~~~~~~~~~~~~~

   Mark relevant work for review

The following relevant work can be found in the
`Citations <#citations>`__ section of this article.

Methodology
~~~~~~~~~~~

   What methodology did the author's use to validate their
   contributions?

The author's compare their semantic segmentation model against other
models on the ISBI EM Challenge.

Author Assumptions
~~~~~~~~~~~~~~~~~~

   What assumptions does the author(s) make? Are they justified
   assumptions?

The author assumes that data augmentation is enough to make a model
robust against rotation, shift, deformations, and gray value variations.

Correctness
^^^^^^^^^^^

   Do the assumptions seem valid?

I disagree with their assumptions as, while yes, data augmentation is
necessary to make a model or system robust against the different
variance mentioned, also exposing the model to more data should further
increase the robustness of it.

Future Directions
~~~~~~~~~~~~~~~~~

   My own proposed future directions for the work

I'd like to try and run the proposed model architecture on semantic
segmentation datasets that aren't ones for cellular imagery.

Open Questions
~~~~~~~~~~~~~~

   What open questions do I have about the work?

Just how much data was the model trained on?

Author Feedback
~~~~~~~~~~~~~~~

   What feedback would I give to the authors?

This is a fine paper. It is fairly short and is lacking technical
details that would be appreciated. For example, how much data was
augmented? As well as the metrics values proposed
`here <fully-convolutional-networks-for-semantic-segmentation.md>`__.

--------------

Summary
-------

   A summary of the paper

The paper *U-Net: Convolutional Networks for Biomedical Image
Segmentation* by Olaf Ronneberger et al. [1] which describes a model
architecture and training details for semantic segmentation. The model
architecture is known as a U-Net. A U-Net is composed of two halves. The
first half is a standard convolutional network that encodes the feature
map; the second half up-samples and decodes the first and is then a
convolutional neural network. The training methodology proposed involves
data augmentation to train this network on a small dataset. The authors
were able to achieve SOTA semantic segmentation performance on the
dataset the they were using.

--------------

Summarization Technique
-----------------------

This paper was summarized using a modified technique proposed by S.
Keshav in his work *How to Read a Paper* [0].

Citations
---------
