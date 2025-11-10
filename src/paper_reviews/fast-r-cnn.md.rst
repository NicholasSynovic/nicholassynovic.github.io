--------------

title: A summary of Fast R-CNN by Ross Girshick description: Posted in
the Proceedings of the IEEE International Conference on Computer Vision,
2015 summary: Posted in the Proceedings of the IEEE International
Conference on Computer Vision, 2015

categories: [summary, Training, Proposals, Feature extraction, Object
detection, Pipelines, Computer architecture, Open source software, 2015,
CVPR] citations: [https://doi.org/10.1145/1273445.1273458,
https://openaccess.thecvf.com/content_iccv_2015/html/Girshick_Fast_R-CNN_ICCV_2015_paper.html]

draft: false

date: 2022-11-10T15:18:13-06:00 featured_image: '' include_toc: true markup: md outputs: [] show_comments: false toc: false show_reading_time: true
---------------------------------------------------------------------------------------------------------------------------------------------------

A summary of *Fast R-CNN*
=========================

   Ross Girshick, IEEE International Conference on Computer Vision,
   2015;
   `DOI <https://openaccess.thecvf.com/content_iccv_2015/html/Girshick_Fast_R-CNN_ICCV_2015_paper.html>`__

For the summary of the paper, go to the `Summary <#summary>`__ section
of this article.

Table of Contents
-----------------

- `A summary of Fast R-CNN <#a-summary-of-fast-r-cnn>`__

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

The problem addressed in this paper is that there exists a method that
is better at performing object detection and semantic segmentation
within region proposals that is not implemented in either the original
R-CNN model or the SPPNet model.

Motivation
~~~~~~~~~~

   Why should we care about this paper?

Because it provides an updated model architecture for performing object
detection and semantic segmentation within region proposals, thereby
speeding up inference time and reducing computational cost.

Category
~~~~~~~~

   What type of paper is this work?

This is a CNN paper.

Context
~~~~~~~

   What other *types* of papers is the work related to?

Papers that discuss CNN models with respect to region proposals.

Contributions
~~~~~~~~~~~~~

   What are the author's main contributions?

An updated R-CNN model that is substantially faster than the original
R-CNN model and the competing SPPNet model. This Fast R-CNN model
achieves SOTA mean average precision (mAP) on the PASCAL VOC 2007, 2010,
and 2012 datasets. Fast training and testing compared to R-CNN and
SPPNet. And that fine tuning ConvNet layers in VGG 16 improves mAP.

--------------

Second Pass
-----------

   A proper read through of the paper is required to answer this

Background Work
~~~~~~~~~~~~~~~

   What has been done prior to this paper?

Region proposal convolutional neural networks have been created prior to
this work. Furthermore, this work utilizes techniques that other
successful CV DL models have utilized to achieve SOTA results.

Figures, Diagrams, Illustrations, and Graphs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

   Are the axes properly labeled? Are results shown with error bars, so
   that conclusions are statistically significant?

The majority of the figures are clear. Figure 2 is a bit difficult to
read due to how squished the text is to each other. Additionally, the
model architecture in Figure 1 uses an identical image as presented in
the seminal R-CNN paper. It would have been nicer to see a different
test image utilized for this paper.

Clarity
~~~~~~~

   Is the paper well written?

This paper is well written, if a bit technical. However, the
technicality is important as it distinguishes the improvements made to
the original R-CNN and SPPNet models.

Relevant Work
~~~~~~~~~~~~~

   Mark relevant work for review

The following relevant work can be found in the
`Citations <#citations>`__ section of this article.

Methodology
~~~~~~~~~~~

   What methodology did the author's use to validate their
   contributions?

They performed a similar study to their previous paper (R-CNN) where
they compared the mAP of competing models against their model.
Additionally, they performed an analysis of their model where they
tested different improvements and DL techniques used in other models to
improve performance.

Author Assumptions
~~~~~~~~~~~~~~~~~~

   What assumptions does the author(s) make? Are they justified
   assumptions?

They utilized the VGG 16 model as their CNN model. However, other
existing models could've been used/ re-implemented with their fast
region proposal model to potentially improve performance.

Correctness
^^^^^^^^^^^

   Do the assumptions seem valid?

This assumption makes sense to a degree as VGG 16 is a popular model for
research purposes. However, evaluating other CNN models would have been
more interesting in my opinion.

Future Directions
~~~~~~~~~~~~~~~~~

   My own proposed future directions for the work

I'd like to implement there work on non-VGG 16 models, such as ResNet or
on a MobileNet.

Open Questions
~~~~~~~~~~~~~~

   What open questions do I have about the work?

Why weren't other models implemented with the fast region proposal
component?

Author Feedback
~~~~~~~~~~~~~~~

   What feedback would I give to the authors?

Overall good paper. I don't recommend on creating a paper of a third
variation of this model unless there are substantial improvements made.
These improvements can be in further reducing computational or energy
cost, an even simpler architecture, or an substantial overall increase
of mAP on the PASCAL VOC datasets.

--------------

Summary
-------

   A summary of the paper

The paper *Fast R-CNN* by Ross Girshick [1] proposes a new method to
perform region proposal CNN tasks that is significantly faster than the
previously proposed method. To do so, both the region proposals and the
image itself are passed into the CNN layer for analysis. Additionally,
many layers of the previous architectures are collapsed into one to
reduce the complexity. Furthermore, the SVM classifier was replaced with
a Softmax classifier which is both faster and more accurate than the
previous SVM classifier.

--------------

--------------

Summarization Technique
-----------------------

This paper was summarized using a modified technique proposed by S.
Keshav in his work *How to Read a Paper* [0].

Citations
---------
