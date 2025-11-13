--------------

title: A summary of Interactive Supercomputing With Jupyter by Rollin
Thomas et al. description: Posted in the IEEE Computing Edge, October
2022 summary: Posted in the IEEE Computing Edge, October 2022

categories: [summary, magazine, article, leadership computing]
citations: [https://doi.org/10.1109/MCSE.2021.3059037]

draft: false

date: 2023-02-19T20:40:07-06:00 featured_image: '' include_toc: true markup: md outputs: [] show_comments: false toc: false show_reading_time: true
---------------------------------------------------------------------------------------------------------------------------------------------------

A summary of *Interactive Supercomputing With Jupyter*
======================================================

   Rollin Thomas et al.; IEEE Computing Edge, October 2022 DOI [0]

Table of Contents
-----------------

- `A summary of Interactive Supercomputing With
  Jupyter <#a-summary-of-interactive-supercomputing-with-jupyter>`__

  - `Table of Contents <#table-of-contents>`__
  - `Summary <#summary>`__

    - `How It Started And How It's
      Going <#how-it-started-and-how-its-going>`__

      - `Phase 1: JupyterHub as Science
        Gateway <#phase-1-jupyterhub-as-science-gateway>`__
      - `Phase 2: Jupyter on a Cori Login
        Node <#phase-2-jupyter-on-a-cori-login-node>`__
      - `Phase 3: Jupyter as Interface to an HPC
        Center <#phase-3-jupyter-as-interface-to-an-hpc-center>`__
      - `Phase 4: JupyterLab as Innovation
        Platform <#phase-4-jupyterlab-as-innovation-platform>`__

    - `Jupyter + HPC = Science! <#jupyter--hpc--science>`__

  - `Citations <#citations>`__

--------------

Summary
-------

The Jupyter project has the potential to allow other scientific domains
to utilize supercomputing resources in an accessible manner. The
National Energy Research Scientific Computing Center (NERSC) has
implemented a Jupyter interface into their Cori supercomputer. This
interface now captures 20% - 25% of user traffic when working on Cori.

How It Started And How It's Going
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

In 2015, NERSC recognized that a growing number of users were using SSH
to run their Jupyter notebooks on the previous generation Edison
supercomputer. As such, NERSC began looking into how to incorporate
Jupyter notebooks as a standard interface into Cori.

Phase 1: JupyterHub as Science Gateway
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

NERSC implemented a separate hardware solution to host JupyterHub. This
JupyterHub instance allowed users to store their notebooks on the NERSC
Global Filesystem (NGF), which allowed teams and individuals to
collaborate and run shared notebooks.

Phase 2: Jupyter on a Cori Login Node
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Jupyter was than ran on login nodes with outputs piped to computation
nodes. The architecture and hosting of both the Jupyter and JupyterHub
instances kept changing hardware and which confused end users.

Phase 3: Jupyter as Interface to an HPC Center
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

JupyterHub was moved to a Docker container and hosted on Cori. It now
acts as the single point of access for running Jupyter notebooks on
Cori, specialty servers, and staff only test servers.

Phase 4: JupyterLab as Innovation Platform
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

JupyterLab is a product from the Jupyter project aimed at collaboration
and provides many improvements on top of the standard Jupyter project.
Such improvements include better file system navigation and reusability
and reproducibility of notebook experiments. NERSC has created a number
of extensions to support JupyterLab on Cori, including file system
navigation extensions, and ``jupyterlab-slurm`` for adding ``SLURM`` job
scheduling directly within JupyterLab.

Jupyter + HPC = Science!
~~~~~~~~~~~~~~~~~~~~~~~~

A number of disciplines now rely on Jupyter to perform calculations on
the Cori supercomputer. These include:

- Geophysical Subsurface Imaging
- Electron Microscope Image Analysis
- Advanced Light Source Tomography

--------------

Citations
---------
