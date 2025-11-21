:blogpost: true
:date: November 8, 2022
:category: Paper
:tags: SCORED, SCORED 22, 2022, PTM Supply Chain, 11-08-2022
:nocomments:

##############################################################################################
  *An Empirical Study of Artifacts and Security Risks in the Pre-trained Model Supply Chain*
##############################################################################################

:bdg-primary:`Workshop Paper` :bdg-primary-line:`SCORED 2022`
:bdg-primary-line:`PTM Supply Chain`

**********
 Authors
**********

.. grid:: 3

   .. grid-item-card:: Wenxin Jiang
      :text-align: center

   .. grid-item-card:: Nicholas M. Synovic
      :text-align: center

   .. grid-item-card:: Rohan Sethi
      :text-align: center

   .. grid-item-card:: Aryan Indarapu
      :margin: 3 0 0 0
      :text-align: center

   .. grid-item-card:: Matt Hyatt
      :text-align: center
      :margin: 3 0 0 0

   .. grid-item-card:: Taylor R. Schorlemmer
      :text-align: center
      :margin: 3 0 0 0

   .. grid-item-card:: George K. Thiruvathukal
      :text-align: center
      :margin: 3 0 0 0
      :columns: 6

   .. grid-item-card:: James C. Davis
      :text-align: center
      :margin: 3 0 0 0
      :columns: 6

**********
 Abstract
**********

Deep neural networks achieve state-of-the-art performance on many tasks, but
require increasingly complex architectures and costly training procedures.
Engineers can reduce costs by reusing a pre-trained model (PTM) and fine-tuning
it for their own tasks. To facilitate software reuse, engineers collaborate
around model hubs, collections of PTMs and datasets organized by problem domain.
Although model hubs are now comparable in popularity and size to other software
ecosystems, the associated PTM supply chain has not yet been examined from a
software engineering perspective. We present an empirical study of artifacts and
security features in 8 model hubs. We indicate the potential threat models and
show that the existing defenses are insufficient for ensuring the security of
PTMs. We compare PTM and traditional supply chains, and propose directions for
further measurements and tools to increase the reliability of the PTM supply
chain.

***********
 Artifacts
***********

.. todo::

   - Add the paper preprint
   - Add the poster
   - Add link to the source code
   - Update the bibtex

.. grid:: 2

   .. grid-item-card:: Paper Preprint
      :text-align: center

      .. button-link:: blog_posts/index.html
         :click-parent:
         :color: primary
         :expand:

         Download

   .. grid-item-card:: Published Paper
      :text-align: center

      .. button-link:: https://doi.org/10.1145/3551349.3559517
         :click-parent:
         :color: primary
         :expand:

         View

   .. grid-item-card:: Poster
      :text-align: center
      :margin: 3 0 0 0

      .. button-link:: https://doi.org/10.1145/3551349.3559517
         :click-parent:
         :color: primary
         :expand:

         Download

   .. grid-item-card:: Source Code
      :text-align: center
      :margin: 3 0 0 0

      .. button-link:: https://doi.org/10.1145/3551349.3559517
         :click-parent:
         :color: primary
         :expand:

         View

   .. grid-item-card::
      :margin: 3 0 0 0
      :text-align: left
      :columns: 12

      .. dropdown:: BibTex

         .. code:: BibTex

            @inproceedings{synovic_snapshot_2023,
               address = {New York, NY, USA},
               series = {{ASE} '22},
               title = {Snapshot {Metrics} {Are} {Not} {Enough}: {Analyzing} {Software} {Repositories} with {Longitudinal} {Metrics}},
               isbn = {978-1-4503-9475-8},
               shorttitle = {Snapshot {Metrics} {Are} {Not} {Enough}},
               url = {https://dl.acm.org/doi/10.1145/3551349.3559517},
               doi = {10.1145/3551349.3559517},
               abstract = {Software metrics capture information about software development processes and products. These metrics support decision-making, e.g., in team management or dependency selection. However, existing metrics tools measure only a snapshot of a software project. Little attention has been given to enabling engineers to reason about metric trends over time—longitudinal metrics that give insight about process, not just product. In this work, we present PRIME (PRocess MEtrics), a tool to compute and visualize process metrics. The currently-supported metrics include productivity, issue density, issue spoilage, and bus factor. We illustrate the value of longitudinal data and conclude with a research agenda. The tool’s demo video can be watched at https://bit.ly/ase2022-prime. Source code can be found at https://github.com/SoftwareSystemsLaboratory/prime.},
               urldate = {2023-09-06},
               booktitle = {Proceedings of the 37th {IEEE}/{ACM} {International} {Conference} on {Automated} {Software} {Engineering}},
               publisher = {Association for Computing Machinery},
               author = {Synovic, Nicholas M. and Hyatt, Matt and Sethi, Rohan and Thota, Sohini and Shilpika and Miller, Allan J. and Jiang, Wenxin and Amobi, Emmanuel S. and Pinderski, Austin and Läufer, Konstantin and Hayward, Nicholas J. and Klingensmith, Neil and Davis, James C. and Thiruvathukal, George K.},
               month = jan,
               year = {2023},
               keywords = {Empirical software engineering, Software metrics},
               pages = {1--4},
            }
