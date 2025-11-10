--------------

title: ‘A summary of Runnemede: An Architecture for Ubiquitous
High-Performance Computing by Nicholas P. Carter et al.' description:
Published in the procceedings of the 2013 IEEE Symposium on
High-Performance Computer Architecture summary: Published in the
procceedings of the 2013 IEEE Symposium on High-Performance Computer
Architecture (HPCA)

categories: [summary, Hardware, Xenon, Runtime, Random access memory,
System-on-chip, Memory management, Clocks, 2013, IEEE HPCA] citations:
[https://doi.org/10.1145/1273445.1273458,
https://doi.org/10.1109/HPCA.2013.6522319,
https://doi.org/10.1109/MM.2011.89]

draft: false

date: 2022-09-30T09:07:41-05:00 featured_image: '' include_toc: true markup: md outputs: [] show_comments: false toc: false show_reading_time: true
---------------------------------------------------------------------------------------------------------------------------------------------------

A summary of *Runnemede: An Architecture for Ubiquitous High-Performance Computing*
===================================================================================

   Nicholas P. Carter et al; https://doi.org/10.1109/HPCA.2013.6522319

For the summary of the paper, go to the `Summary <#summary>`__ section
of this article.

Table of Contents
-----------------

- `A summary of Runnemede: An Architecture for Ubiquitous
  High-Performance
  Computing <#a-summary-of-runnemede-an-architecture-for-ubiquitous-high-performance-computing>`__

  - `Table of Contents <#table-of-contents>`__
  - `First Pass <#first-pass>`__

    - `Category <#category>`__
    - `Context <#context>`__
    - `Contributions <#contributions>`__

  - `Second Pass <#second-pass>`__

    - `Background Work <#background-work>`__
    - `Motivation <#motivation>`__
    - `Figures, Diagrams, Illustrations, and
      Graphs <#figures-diagrams-illustrations-and-graphs>`__
    - `Clarity <#clarity>`__
    - `Relevant Work <#relevant-work>`__
    - `Author Assumptions <#author-assumptions>`__

      - `Correctness <#correctness>`__

  - `Summary <#summary>`__
  - `Summarization Technique <#summarization-technique>`__
  - `Citations <#citations>`__

--------------

First Pass
----------

   Discussion about the title, abstract, introduction, section and
   sub-section headings, and conclusion

The paper *Runnemede: An Architecture for Ubiquitous High-Performance
Computing* by Nicholas P. Carter et al. [1] describes the Runnemede high
performance computing architecture targeting extreme-scale systems. This
architecture was developed for the DARPA's Ubiquitous High-Performance
Computing program. The authors describe multiple facets of the
architecture including the networking, hardware and software design, the
energy efficiencies of the architecture. They also evaluate the
performance of the architecture as well. Their many contributions are a
theoretical architecture that is well optimized for energy efficiency on
extra-scale computers.

Category
~~~~~~~~

   What type of paper is this work?

This is a theoretical paper describing an architecture for HPC systems.

Context
~~~~~~~

   What other *types* of papers is the work related to?

Similar works would involve HPC architecture descriptions as well as low
powered computing architectures as well.

Contributions
~~~~~~~~~~~~~

   What are the author's main contributions?

Their contributions are a theoretical design and analysis of a HPC
architecture focused on energy efficiency.

--------------

Second Pass
-----------

Background Work
~~~~~~~~~~~~~~~

   What has been done prior to this paper?

Runnemede is a one of four architectures under the DARPA UHPC program.
Additionally, work has been done before to build both low powered
cluster computers, and HPC.

Motivation
~~~~~~~~~~

   Why should we care about this paper?

The justification for this work is that there exists a theory that
larger and larger HPC computers will require more and more power,
without fully utilizing the entire device array. Additionally, a test
chip was designed, but never produced, called “Sunshine”. By designing
this chip, the authors were able to theoretically test the ideas
presented in the paper as well as develop new ones for the architecture.

Figures, Diagrams, Illustrations, and Graphs
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

   Are the axes properly labeled? Are results shown with error bars, so
   that conclusions are statistically significant?

All of the figures and tables are clear and easy to understand.

Clarity
~~~~~~~

   Is the paper well written?

The paper is well written and clear to understand.

Relevant Work
~~~~~~~~~~~~~

   Mark relevant work for review

The following relevant work can be found in the
`Citations <#citations>`__ section of this article.

- [2]

Author Assumptions
~~~~~~~~~~~~~~~~~~

   What assumptions does the author(s) make? Are they justified
   assumptions?

The author's assumed that, “… The power consumed by logic is expected to
scale well as feature sizes shrink, but not as well as transistor
density, leading to the design of *over provisioned, energy-limited*
systems that contain more hardware than they can operate
simultaneously”. In other words, systems will have more and more *power
hungry* hardware that cannot be utilized in its entirety. Additionally,
they assume that the current trend with DRAM will cause power
consumption to decrement over time, but not fast enough.

Correctness
^^^^^^^^^^^

   Do the assumptions seem valid?

As the year is 2022, the current next generation hardware from NVIDIA,
Intel, and AMD has been announced, all of which require immense power
draw to operate. Additionally, DDR5 DRAM exists and consumes less power
than the previous DDR4 DRAM. Therefore, I agree with the assumptions of
the authors.

--------------

Summary
-------

   A summary of the paper

The paper *Runnemede: An Architecture for Ubiquitous High-Performance
Computing* by Nicholas P. Carter et al. [1] describes the Runnemede high
performance computing architecture targeting extreme-scale systems. This
architecture was developed for the DARPA's Ubiquitous High-Performance
Computing program to address over provisioned, energy limited HPC
architecture designs. The authors proposed a theoretical architecture
design, and justify it via bench marking that they performed with
simulations. Their work assumes (correctly in my opinion) that systems
will continue to require more power to operate in order to achieve
better performance.

--------------

Summarization Technique
-----------------------

This paper was summarized using a modified technique proposed by S.
Keshav in his work *How to Read a Paper* [0].

Citations
---------
