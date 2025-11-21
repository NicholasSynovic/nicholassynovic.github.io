:blogpost: true
:date: October 10, 2025
:category: Paper
:tags: arXiv, arXiv 2025, 2025, Vulnerabilities, 10-10-2025
:nocomments:

####################################################################################################
 *Process-based Indicators of Vulnerability Re-Introducing Code Changes: An Exploratory Case Study*
####################################################################################################

:bdg-primary:`Preprint Manuscript` :bdg-primary-line:`arXiv 2025`
:bdg-primary-line:`Vulnerabilities`

**********
 Authors
**********

.. grid:: 3

   .. grid-item-card:: Shimmi Samiha
      :text-align: center

      Co-First Author
      ^^^

   .. grid-item-card:: Nicholas M. Synovic
      :text-align: center

      Co-First Author
      ^^^

   .. grid-item-card:: Mona Rahimi
      :text-align: center

   .. grid-item-card:: George K. Thiruvathukal
      :margin: 3 0 0 0
      :text-align: center
      :columns: 12

**********
 Abstract
**********

Software vulnerabilities often persist or re-emerge even after being fixed,
revealing the complex interplay between code evolution and socio-technical
factors. While source code metrics provide useful indicators of vulnerabilities,
software engineering process metrics can uncover patterns that lead to their
introduction. Yet few studies have explored whether process metrics can reveal
risky development activities over time — insights that are essential for
anticipating and mitigating software vulnerabilities. This work highlights the
critical role of process metrics along with code changes in understanding and
mitigating vulnerability reintroduction. We move beyond file-level prediction
and instead analyze security fixes at the commit level, focusing not only on
whether a single fix introduces a vulnerability but also on the longer sequences
of changes through which vulnerabilities evolve and re-emerge. Our approach
emphasizes that reintroduction is rarely the result of one isolated action, but
emerges from cumulative development activities and socio-technical conditions.
To support this analysis, we conducted a case study on the ImageMagick project
by correlating longitudinal process metrics such as bus factor, issue density,
and issue spoilage with vulnerability reintroduction activities, encompassing 76
instances of reintroduced vulnerabilities. Our findings show that
reintroductions often align with increased issue spoilage and fluctuating issue
density, reflecting short-term inefficiencies in issue management and team
responsiveness. These observations provide a foundation for broader studies that
combine process and code metrics to predict risky fixes and strengthen software
security.

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

.. note::

   I have continued to iterate upon the ``PRIME`` tool in a new repository. If
   want to learn more, visit `<https://github.com/NicholasSynovic/prime>`_.

*******
 Video
*******

.. youtube:: YigEHy3_JCo
