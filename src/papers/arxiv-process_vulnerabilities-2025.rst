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


            @misc{shimmi_process-based_2025,
               title = {Process-based {Indicators} of {Vulnerability} {Re}-{Introducing} {Code} {Changes}: {An} {Exploratory} {Case} {Study}},
               shorttitle = {Process-based {Indicators} of {Vulnerability} {Re}-{Introducing} {Code} {Changes}},
               url = {http://arxiv.org/abs/2510.26676},
               doi = {10.48550/arXiv.2510.26676},
               abstract = {Software vulnerabilities often persist or re-emerge even after being fixed, revealing the complex interplay between code evolution and socio-technical factors. While source code metrics provide useful indicators of vulnerabilities, software engineering process metrics can uncover patterns that lead to their introduction. Yet few studies have explored whether process metrics can reveal risky development activities over time -- insights that are essential for anticipating and mitigating software vulnerabilities. This work highlights the critical role of process metrics along with code changes in understanding and mitigating vulnerability reintroduction. We move beyond file-level prediction and instead analyze security fixes at the commit level, focusing not only on whether a single fix introduces a vulnerability but also on the longer sequences of changes through which vulnerabilities evolve and re-emerge. Our approach emphasizes that reintroduction is rarely the result of one isolated action, but emerges from cumulative development activities and socio-technical conditions. To support this analysis, we conducted a case study on the ImageMagick project by correlating longitudinal process metrics such as bus factor, issue density, and issue spoilage with vulnerability reintroduction activities, encompassing 76 instances of reintroduced vulnerabilities. Our findings show that reintroductions often align with increased issue spoilage and fluctuating issue density, reflecting short-term inefficiencies in issue management and team responsiveness. These observations provide a foundation for broader studies that combine process and code metrics to predict risky fixes and strengthen software security.},
               urldate = {2025-11-17},
               publisher = {arXiv},
               author = {Shimmi, Samiha and Synovic, Nicholas M. and Rahimi, Mona and Thiruvathukal, George K.},
               month = oct,
               year = {2025},
               note = {arXiv:2510.26676 [cs]},
               keywords = {Computer Science - Software Engineering},
               annote = {Comment: 9 pages, 6 figures; Samiha Shimmi and Nicholas M. Synovic contributed equally to this work (co-first authors); Mona Rahimi and George K. Thiruvathukal contributed equally to this work (co-supervisors)},
            }

*******
 Video
*******

.. youtube:: YigEHy3_JCo
