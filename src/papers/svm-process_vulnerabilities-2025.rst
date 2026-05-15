:blogpost: true
:date: October 10, 2025
:category: Paper
:tags: arXiv, arXiv 2025, 2025, Vulnerabilities, 10-10-2025
:nocomments:

####################################################################################################
 *Process-based Indicators of Vulnerability Re-Introducing Code Changes: An Exploratory Case Study*
####################################################################################################

:bdg-primary:`Conference Paper`
:bdg-primary-line:`SVM 2026`
:bdg-primary-line:`Vulnerabilities`

**********
 Authors
**********

.. grid:: 2

   .. grid-item-card:: Shimmi Samiha
      :text-align: center

      Co-First Author
      ^^^
      +++
      .. include:: ../authors.rst
         :start-after: .. Shimmi Samiha
         :end-before: ..

   .. grid-item-card:: Nicholas M. Synovic
      :text-align: center

      Co-First Author
      ^^^
      +++
      .. include:: ../authors.rst
         :start-after: .. Nicholas M. Synovic
         :end-before: ..

   .. grid-item-card:: Mona Rahimi
      :text-align: center
      :margin: 3 0 0 0

      Co-Advisor
      ^^^
      +++
      .. include:: ../authors.rst
         :start-after: .. Mona Rahimi
         :end-before: ..

   .. grid-item-card:: George K. Thiruvathukal
      :margin: 3 0 0 0
      :text-align: center

      Co-Advisor
      ^^^
      +++
      .. include:: ../authors.rst
         :start-after: .. George K. Thiruvathukal
         :end-before: ..

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

.. grid:: 2

   .. grid-item-card:: Paper Pre-print
      :text-align: center

      .. button-link:: https://doi.org/10.48550/arXiv.2510.26676
         :click-parent:
         :color: primary
         :expand:

         Download

   .. grid-item-card:: Published Paper
      :text-align: center

      .. button-link:: https://doi.org/10.1145/3786165.3788438
         :click-parent:
         :color: primary
         :expand:

         View

   .. grid-item-card:: Source Code
      :text-align: center

      .. button-link:: https://github.com/NicholasSynovic/research_prime_vfv
         :click-parent:
         :color: primary
         :expand:

         View

   .. grid-item-card:: Presentation
      :text-align: center

      .. button-link:: https://doi.org/10.6084/m9.figshare.32301891
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

            @inproceedings{
               10.1145/3786165.3788438,
               author = {Shimmi, Samiha and Synovic, Nicholas M. and Rahimi, Mona and Thiruvathukal, George K.},
               title = {Process-based Indicators of Vulnerability Re-Introducing Code Changes: An Exploratory Case Study},
               year = {2026},
               isbn = {9798400723971},
               publisher = {Association for Computing Machinery},
               address = {New York, NY, USA},
               url = {https://doi.org/10.1145/3786165.3788438},
               doi = {10.1145/3786165.3788438},
               abstract = {Software vulnerabilities often persist or re-emerge after being fixed, revealing the complex interplay between code evolution and socio-technical factors. While source code metrics provide useful indicators of vulnerabilities, software engineering process metrics can measure engineering activities that lead to their introduction. To our knowledge, few studies have explored whether these metrics can identify these activities over time — insights that are essential for anticipating and mitigating software vulnerabilities. This work highlights the critical role of process metrics along with code changes in understanding and mitigating vulnerability reintroduction. We move beyond file-level prediction and instead analyze vulnerability fixes at the commit level, focusing on sequences of changes through which vulnerabilities re-emerge.Our approach emphasizes that reintroduction is rarely the result of one isolated action, but emerges from cumulative engineering activities and socio-technical conditions. To support this analysis, we conduct a case study on the ImageMagick project by correlating longitudinal process metrics including bus factor, issue density, and issue spoilage with vulnerability reintroduction activities, encompassing 76 instances of reintroduced vulnerabilities. Our findings show that vulnerability reintroduction often aligns with increased issue spoilage and fluctuating issue density, reflecting short-term inefficiencies in issue management and team responsiveness. These observations provide a foundation for broader studies that combine process and code metrics to predict vulnerability reintroducing fixes and strengthen software security.},
               booktitle = {Proceedings of the 2026 IEEE/ACM 4th International Workshop on Software Vulnerability Management},
               pages = {9–16},
               numpages = {8},
               keywords = {Software security, Vulnerability reintroduction, Risky fixes, Software process metrics, Longitudinal metrics, Mining software repositories, Scientific software, Vulnerability prediction},
               location = {
               },
               series = {SVM '26}
               }
