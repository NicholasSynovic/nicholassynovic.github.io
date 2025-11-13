--------------

title: ‘A summary of Multimedia Content Creation using Global Network
Cameras: The Making of CAM2 by Ahmed S. Kaseb et al.' description:
Posted in GlobalSIP, 2015 summary: Posted in GlobalSIP, 2015

categories: [summary, paper, Cameras, Cloud computing, Streaming media,
Multimedia communication, Mobile communication, Navigation] citations:
[https://doi.org/10.1145/1273445.1273458,
https://doi.org/10.1109/GlobalSIP.2015.7416927,
https://doi.org/10.1109/SSIAI.2014.6806032,
https://doi.org/10.1145/1971162.1971171]

draft: false

date: 2023-03-21T12:31:04-05:00 featured_image: '' include_toc: true markup: md outputs: [] show_comments: false toc: false show_reading_time: true
---------------------------------------------------------------------------------------------------------------------------------------------------

A summary of *Multimedia Content Creation using Global Network Cameras: The Making of CAM2*
===========================================================================================

   Ahmed S. Kaseb et al. GlobalSIS, 2015 DOI [0]

**DISCLOSURE**: I work with one of the authors (Yung-Hsiang Lu). My
comments and views of the paper may be skewed due to my relationship
with the author.

For the summary of the paper, go to the `Summary <#summary>`__ section
of this article.

Table of Contents
-----------------

- `A summary of Multimedia Content Creation using Global Network
  Cameras: The Making of
  CAM2 <#a-summary-of-multimedia-content-creation-using-global-network-cameras-the-making-of-cam2>`__

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

  - `Summarization Technique <#summarization-technique>`__
  - `Citations <#citations>`__

--------------

First Pass
----------

   Read the title, abstract, introduction, section and sub-section
   headings, and conclusion

There exists many cameras in the wild that are openly exposing their
feeds to the interent intended or otherwise. It is therefore possible to
create a database of these open cameras, access their feeds, and create
new content experiences for viewers. Additionally, these feeds provide
researchers with an opportunity to view real world changes
longitudinally, thereby enabling studies that rely on many observations
over time. This database and tooling is called CAM2 (Continuous Analysis
of Many CAMeras), and it currently contains 70,000 cameras in the wild.

However, managing and providing a dataset of all this data is difficult.
Furthermore, finding and reporting camera metadata including make and
model as well as geographic location are also non-trivial tasks. Thus
CAM2 is working towards resolving these issues for future revisions.

Problem
~~~~~~~

   What is the problem addressed in the paper?

THe problem addressed in the paper is that there exists a spot in
content creation and research to use the camera feeds of openly exposed
devices to create new experiences and insights into the world around us.

Additionally, trying to capture this data requires a significant amount
of engineering and computational resources.

Motivation
~~~~~~~~~~

   Why should we care about this paper?

Because it provides a tool to allow for the creation of new content
experiences and research opportunities using open, internet exposed
cameras.

Additionally, it provides a list of problems that reimplementers and
extenders will face when trying to recreate similar tools.

Category
~~~~~~~~

   What type of paper is this work?

This is a tools paper.

Context
~~~~~~~

   What other *types* of papers is the work related to?

This paper is related to work involving using open, internet exposed web
cameras for creating new experiences and research opportunities.

Contributions
~~~~~~~~~~~~~

   What are the author's main contributions?

A tool to provide easy access to the internet exposed web cameras.

--------------

Second Pass
-----------

   A proper read through of the paper is required to answer this

Background Work
~~~~~~~~~~~~~~~

   What has been done prior to this paper?

Prior work has gone through the effort of collecting information from
open, internet cameras. However, the compute and storage complexity has
limited their usefulness. Furthermore, in order to make this tool useful
to all researchers, as a cloud software technology, autoscaling and load
balancing is a challenge as well.

Figures, Diagrams, Illustrations, and Graphs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

   Are the axes properly labeled? Are results shown with error bars, so
   that conclusions are statistically significant?

All of the images are properly labelled.

Clarity
~~~~~~~

   Is the paper well written?

Yes, the paper is well written.

Relevant Work
~~~~~~~~~~~~~

   Mark relevant work for review

The following relevant work can be found in the
`Citations <#citations>`__ section of this article.

- Image-Based Geographical Location Estimation Using Web Cameras [2]
- IP Geolocation Databases: Unreliable? [3]

Methodology
~~~~~~~~~~~

   What methodology did the author's use to validate their
   contributions?

They created a tool to allow for the analysis of many cameras
continously. There was no validation mentioned w.r.t any experiments
that they ran. Additionally, source code is not provided.

Author Assumptions
~~~~~~~~~~~~~~~~~~

   What assumptions does the author(s) make? Are they justified
   assumptions?

The only assumption that the authors make is that the cameras will
remain accessible after the publication of the paper.

Correctness
^^^^^^^^^^^

   Do the assumptions seem valid?

No it is not a valid assumption because the owners of these open,
internet connected cameras could becgin to password protect their
cameras for privacy or security concerns, thus making the usage of this
tool limited or non-optimal.

Future Directions
~~~~~~~~~~~~~~~~~

   My own proposed future directions for the work

Currently, this tool is no longer functional at the URL the author's
provide. It would be cool to recreate portions of this tool.
Additionally, figuring out optimal ways of discovering internet
connected cameras would be interesting as well. Furthermore, learning
how to geo-locate IP addresses is also interesting.

Open Questions
~~~~~~~~~~~~~~

   What open questions do I have about the work?

How does one get access to the dataset described by the authors?

Author Feedback
~~~~~~~~~~~~~~~

   What feedback would I give to the authors?

This is a pretty good tools paper. However, like many tools papers,
without source code or long-term data archival, this work cannot be
easily extended upon.

--------------

Summarization Technique
-----------------------

This paper was summarized using a modified technique proposed by S.
Keshav in his work *How to Read a Paper* [0].

Citations
---------
