--------------

title: A summary of Supercomputing In Python With Legate by Michael
Bauer et al. description: Posted in the IEEE Computing Edge, October
2022 summary: Posted in the IEEE Computing Edge, October 2022

categories: [summary, magazine, article, scientific programming]
citations: [https://doi.org/10.1109/MCSE.2021.3088239]

draft: false

date: 2023-02-19T21:34:36-06:00 featured_image: '' include_toc: true markup: md outputs: [] show_comments: false toc: false show_reading_time: true
---------------------------------------------------------------------------------------------------------------------------------------------------

A summary of *Supercomputing In Python With Legate*
===================================================

   Michael Bauer et al. IEEE Computing Edge, October 2022 DOI [0]

Table of Contents
-----------------

- `A summary of Supercomputing In Python With
  Legate <#a-summary-of-supercomputing-in-python-with-legate>`__

  - `Table of Contents <#table-of-contents>`__
  - `Summary <#summary>`__

    - `Supercomputing With Numpy <#supercomputing-with-numpy>`__
    - `Programming System <#programming-system>`__
    - `Composable Ecosystem <#composable-ecosystem>`__

  - `Citations <#citations>`__

--------------

Summary
-------

Numpy and Pandas are software packages that aid in the development of
mathematical software because their notations mimic that of scientific
and mathematical notation. However, neither package scales to modern
HPC. Thus Legate was developed to mimic the interfaces that both Numpy
and Pandas provide while being able to scale to many computing
resources.

Supercomputing With Numpy
~~~~~~~~~~~~~~~~~~~~~~~~~

Numpy syntax is compact and able to concisely express mathematical
operations. Additionally, Numpy operations offer themselves to
parallelization easily. However, vanilla Numpy doesn't natively support
these parallelization optimizations. Therefore a number of efforts exist
to implement these optimizations. Legate supports these operations and
fall backs to single-core performance when it doesn't.

Legate defines a common data model that can be used to expand Numpy's
memory allocation and library extensions.

Legate's extensions to Numpy provide access to data parallel operations
that vanilla Numpy and similar alternatives to Legate don't offer.

Programming System
~~~~~~~~~~~~~~~~~~

Legate is built on top of Legion, which acts as a dynamic programming
system for HPC. When a call is made from Legate, Legion is able to
interpret this code and distribute it to many nodes. Legion may also
reorder Legate calls for better performance.

This was done to avoid compiling Legate-Numpy code into an optimized
program for HPC.

Composable Ecosystem
~~~~~~~~~~~~~~~~~~~~

Legate aims to be a building block for other Numpy based libraries to be
based off of. As an example of this, Legate Pandas was created as a
Pandas alternative complete with parallelization optimizations.

An advantage of building off of Legate and Legion is that the
communication and protocol layer already exist, thereby allowing
developers to easily extend these applications to their respective
purposes.

--------------

Citations
---------
