:blogpost: true
:date: October 5, 2023
:category: Paper
:tags: arXiv, arXiv 2023, 2023, Dataset, 10-05-2023
:nocomments:

###############################################################
 *PeaTMOSS: Mining Pre-Trained Models in Open-Source Software*
###############################################################

:bdg-primary:`Pre-print Manuscript` :bdg-primary-line:`arXiv 2023`
:bdg-primary-line:`Dataset`
:bdg-link-primary-line:`arXiv:10.48550/arXiv.2310.03620 <https://doi.org/10.48550/arXiv.2310.03620>`

**********
 Authors
**********

.. grid:: 3


   .. grid-item-card:: Wenxin Jiang
      :text-align: center

      Co-First Author
      ^^^
      +++
      .. include:: ../authors.rst
         :start-after: .. Wenxin Jiang
         :end-before: ..

   .. grid-item-card:: Jason Jones
      :text-align: center

      Co-First Author
      ^^^
      +++
      .. include:: ../authors.rst
         :start-after: .. Jason Jones
         :end-before: ..

   .. grid-item-card:: Jerin Yasmin
      :text-align: center

      Co-First Author
      ^^^
      +++
      .. include:: ../authors.rst
         :start-after: .. Jerin Yasmin
         :end-before: ..

   .. grid-item-card:: Nicholas M. Synovic
      :margin: 3 0 0 0
      :text-align: center

      +++
      .. include:: ../authors.rst
         :start-after: .. Nicholas M. Synovic
         :end-before: ..

   .. grid-item-card:: Rajeev Sashti
      :margin: 3 0 0 0
      :text-align: center

      +++
      .. include:: ../authors.rst
         :start-after: .. Rajeev Sashti
         :end-before: ..

   .. grid-item-card:: Sophie Chen
      :margin: 3 0 0 0
      :text-align: center

      +++
      .. include:: ../authors.rst
         :start-after: .. Sophie Chen
         :end-before: ..

   .. grid-item-card:: George K. Thiruvathukal
      :margin: 3 0 0 0
      :text-align: center

      +++
      .. include:: ../authors.rst
         :start-after: .. George K. Thiruvathukal
         :end-before: ..

   .. grid-item-card:: Yuan Tian
      :margin: 3 0 0 0
      :text-align: center

      +++
      .. include:: ../authors.rst
         :start-after: .. Yuan Tian
         :end-before: ..

   .. grid-item-card:: James C. Davis
      :margin: 3 0 0 0
      :text-align: center

      +++
      .. include:: ../authors.rst
         :start-after: .. James C. Davis
         :end-before: ..

**********
 Abstract
**********

Developing and training deep learning models is expensive, so software engineers
have begun to reuse pre-trained deep learning models (PTMs) and fine-tune them
for downstream tasks. Despite the wide-spread use of PTMs, we know little about
the corresponding software engineering behaviors and challenges.

To enable the study of software engineering with PTMs, we present the PeaTMOSS
dataset: Pre-Trained Models in Open-Source Software. PeaTMOSS has three parts:
a snapshot of (1) 281,638 PTMs, (2) 27,270 open-source software repositories
that use PTMs, and (3) a mapping between PTMs and the projects that use them. We
challenge PeaTMOSS miners to discover software engineering practices around
PTMs. A demo and link to the full dataset are available at:
`<https://github.com/PurdueDualityLab/PeaTMOSS-Demos>`_.

***********
 Artifacts
***********

.. grid:: 2

   .. grid-item-card:: Paper Pre-print
      :text-align: center

      .. button-link:: https://doi.org/10.48550/arXiv.2310.03620
         :click-parent:
         :color: primary
         :expand:

         Download

   .. grid-item-card:: Source Code
      :text-align: center

      .. button-link:: https://github.com/PurdueDualityLab/PeaTMOSS-Demos
         :click-parent:
         :color: primary
         :expand:

         View

   .. grid-item-card:: Dataset
      :text-align: center
      :margin: 3 0 0 0
      :columns: 12

      .. button-link:: https://transfer.rcac.purdue.edu/file-manager?origin_id=c4ec6812-3315-11ee-b543-e72de9e39f95&origin_path=%2F
         :click-parent:
         :color: primary
         :expand:

         View

   .. grid-item-card::
      :margin: 3 0 0 0
      :text-align: left
      :columns: 12

      .. dropdown:: BibTex
         :open:

         .. code:: BibTex

            @misc{jiang_peatmoss_2023,
               title = {{PeaTMOSS}: {Mining} {Pre}-{Trained} {Models} in {Open}-{Source} {Software}},
               copyright = {All rights reserved},
               shorttitle = {{PeaTMOSS}},
               url = {http://arxiv.org/abs/2310.03620},
               doi = {10.48550/arXiv.2310.03620},
               abstract = {Developing and training deep learning models is expensive, so software engineers have begun to reuse pre-trained deep learning models (PTMs) and fine-tune them for downstream tasks. Despite the wide-spread use of PTMs, we know little about the corresponding software engineering behaviors and challenges. To enable the study of software engineering with PTMs, we present the PeaTMOSS dataset: Pre-Trained Models in Open-Source Software. PeaTMOSS has three parts: a snapshot of (1) 281,638 PTMs, (2) 27,270 open-source software repositories that use PTMs, and (3) a mapping between PTMs and the projects that use them. We challenge PeaTMOSS miners to discover software engineering practices around PTMs. A demo and link to the full dataset are available at: https://github.com/PurdueDualityLab/PeaTMOSS-Demos.},
               urldate = {2024-01-29},
               publisher = {arXiv},
               author = {Jiang, Wenxin and Jones, Jason and Yasmin, Jerin and Synovic, Nicholas and Sashti, Rajeev and Chen, Sophie and Thiruvathukal, George K. and Tian, Yuan and Davis, James C.},
               month = oct,
               year = {2023},
               note = {arXiv:2310.03620 [cs]},
               keywords = {Computer Science - Software Engineering, Computer Science - Artificial Intelligence}
            }
