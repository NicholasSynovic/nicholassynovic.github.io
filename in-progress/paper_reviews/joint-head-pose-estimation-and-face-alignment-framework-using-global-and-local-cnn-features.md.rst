--------------

title: A summary of Joint Head Pose Estimation and Face Alignment
Framework Using Global and Local CNN Features by Xiang Xu and A.
Kakadiaris description: Posted in IEEE FG, 2017 summary: Posted in IEEE
FG, 2017

categories: `summary <#summary>`__ citations:
[https://doi.org/10.1145/1273445.1273458,
https://doi.org/10.1109/FG.2017.81]

draft: false

date: 2022-12-04T22:32:45-06:00 featured_image: '' include_toc: true markup: md outputs: [] show_comments: false toc: false show_reading_time: true
---------------------------------------------------------------------------------------------------------------------------------------------------

A summary of *Joint Head Pose Estimation and Face Alignment Framework Using Global and Local CNN Features*
==========================================================================================================

   Xiang Xu and A. Kakadiaris IEEE FG, 2017
   `DOI <https://doi.org/10.1109/FG.2017.81>`__

For the summary of the paper, go to the `Summary <#summary>`__ section
of this article.

Table of Contents
-----------------

- `A summary of Joint Head Pose Estimation and Face Alignment Framework
  Using Global and Local CNN
  Features <#a-summary-of-joint-head-pose-estimation-and-face-alignment-framework-using-global-and-local-cnn-features>`__

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

The problem is two fold:

1. To build a face detector that is robust to occlusion and "in the
   wild" images.
2. To incorporate facial landmarks via global and local features of the
   image to better isolate not only where the face(s) are within the
   image, but also the eyes, jaw, mouth, etc.

Motivation
~~~~~~~~~~

   Why should we care about this paper?

Because the solution proposed allows for the identification and
isolation of facial features of an input image.

Category
~~~~~~~~

   What type of paper is this work?

This is a face detection paper as well as CV model architecture paper.

Context
~~~~~~~

   What other *types* of papers is the work related to?

This paper is related to works involving face and facial landmark
detection.

Contributions
~~~~~~~~~~~~~

   What are the author's main contributions?

Their contributions are a methodology for leveraging the relationship
between head pose and face landmarks to find the best shape for
initialization and the usage of global and local CNN features for pose
estimation and face alignment in a cascading manner.

--------------

Second Pass
-----------

   A proper read through of the paper is required to answer this

Background Work
~~~~~~~~~~~~~~~

   What has been done prior to this paper?

Work has been done to detect faces and to identify the facial landmarks
of a detected face.

Figures, Diagrams, Illustrations, and Graphs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

   Are the axes properly labeled? Are results shown with error bars, so
   that conclusions are statistically significant?

Nearly all of the figures, charts, and tables are clear. Figure 4 is
lacking description for which set of images correspond to what model.

Clarity
~~~~~~~

   Is the paper well written?

The paper is well written.

Relevant Work
~~~~~~~~~~~~~

   Mark relevant work for review

The following relevant work can be found in the
`Citations <#citations>`__ section of this article.

Methodology
~~~~~~~~~~~

   What methodology did the author's use to validate their
   contributions?

The authors compared their solution (JFA) against other SOTA models
including ERT on pose and facial landmark detection datasets.

Author Assumptions
~~~~~~~~~~~~~~~~~~

   What assumptions does the author(s) make? Are they justified
   assumptions?

That global features can capture fine grain detail of an image.

Correctness
^^^^^^^^^^^

   Do the assumptions seem valid?

Not really, as global features are intended to look at the feature map
as a whole to identify very large or prominent features (such as an
entire face). To the authors credit, they do discuss this at the end of
the paper. But as it stands, the usage of global features to identify
fine grain detail (such as facial landmarks) is a waste of computational
resources that only attempts to mimic the local feature analysis that
their algorithm also performs.

Future Directions
~~~~~~~~~~~~~~~~~

   My own proposed future directions for the work

I'd like to see if I could optimize their solution by removing the
global feature analysis for facial landmarks component. The idea behind
optimizing their solution is to implement it on a mobile or low powered
system.

Open Questions
~~~~~~~~~~~~~~

   What open questions do I have about the work?

As the solution proposed involves a database lookup to identify areas of
interest for facial landmarks, how robust is that database to rotation,
scale, lighting, and occlusion variance?

Author Feedback
~~~~~~~~~~~~~~~

   What feedback would I give to the authors?

This is an interesting solution to the problem of identifying facial
landmarks, however

--------------

Summary
-------

   A summary of the paper

The paper *Joint Head Pose Estimation and Face Alignment Framework Using
Global and Local CNN Features* by Xiang Xu and A. Kakadiaris [1]
describes a solution to not only detect faces, but identify facial
landmarks using a cascading CNN architecture. The reference model for
the architecture was able to attain SOTA results using an off-the-shelf
face detector (Dlib) and could accurately identify facial landmarks. It
is able top detect facial landmarks by analyzing both the global and
local features generated from the face detectors feature maps. A global
feature detector is used for pose estimation. This is then passed into a
database of poses used for estimating where facial features are most
likely to be in the input image. A local feature detector than analyzes
the feature map to identify all of the facial landmarks within the
image.

--------------

Summarization Technique
-----------------------

This paper was summarized using a modified technique proposed by S.
Keshav in his work *How to Read a Paper* [0].

Citations
---------
