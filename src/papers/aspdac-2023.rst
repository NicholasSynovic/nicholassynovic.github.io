:blogpost: true
:date: January 1, 2024
:category: Paper
:tags: ASP-DAC, ASP-DAC 29, 2024, Computer vision, 01-01-2024
:nocomments:

##############################################################################################################################################################
 *An automated approach for improving the inference latency and energy efficiency of pretrained CNNs by removing irrelevant pixels with focused convolutions*
##############################################################################################################################################################

:bdg-primary:`Conference Paper` :bdg-primary-line:`ASP-DAC 2024`
:bdg-primary-line:`Computer Vision`

**********
 Authors
**********

.. grid:: 3

   .. grid-item-card:: Caleb Tung
      :text-align: center

   .. grid-item-card:: Nicholas Eliopoulos
      :text-align: center

   .. grid-item-card:: Purvish Jajal
      :text-align: center

   .. grid-item-card:: Gowri Ramshankar
      :margin: 3 0 0 0
      :text-align: center

   .. grid-item-card:: Cheng-Yun Yang
      :text-align: center
      :margin: 3 0 0 0

   .. grid-item-card:: Nicholas M. Synovic
      :text-align: center
      :margin: 3 0 0 0

   .. grid-item-card:: Xuecen Zhang
      :text-align: center
      :margin: 3 0 0 0

   .. grid-item-card:: Vipin Chaudhary
      :text-align: center
      :margin: 3 0 0 0

   .. grid-item-card:: George K. Thiruvathukal
      :text-align: center
      :margin: 3 0 0 0

   .. grid-item-card:: Yung-Hsiang Lu
      :text-align: center
      :margin: 3 0 0 0
      :columns: 12

**********
 Abstract
**********

Software metrics capture information about software development processes and
products. These metrics support decision-making, e.g., in team management or
dependency selection. However, existing metrics tools measure only a snapshot of
a software project. Little attention has been given to enabling engineers to
reason about metric trends over time—longitudinal metrics that give insight
about process, not just product. In this work, we present PRIME
(PRocess MEtrics), a tool to compute and visualize process metrics. The
currently-supported metrics include productivity, issue density, issue spoilage,
and bus factor. We illustrate the value of longitudinal data and conclude with a
research agenda. The tool's demo video can be watched at
`<https://bit.ly/ase2022-prime>`_. Source code can be found at
`<https://github.com/SoftwareSystemsLaboratory/prime>`_.

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


            @inproceedings{tung_automated_2024,
               title = {An automated approach for improving the inference latency and energy efficiency of pretrained {CNNs} by removing irrelevant pixels with focused convolutions},
               url = {https://ieeexplore.ieee.org/document/10473884},
               doi = {10.1109/ASP-DAC58780.2024.10473884},
               abstract = {Computer vision often uses highly accurate Convolutional Neural Networks (CNNs), but these deep learning models are associated with ever-increasing energy and computation requirements. Producing more energy-efficient CNNs often requires model training which can be cost-prohibitive. We propose a novel, automated method to make a pretrained CNN more energy-efficient without re-training. Given a pretrained CNN, we insert a threshold layer that filters activations from the preceding layers to identify regions of the image that are irrelevant, i.e. can be ignored by the following layers while maintaining accuracy. Our modified focused convolution operation saves inference latency (by up to 25\%) and energy costs (by up to 22\%) on various popular pretrained CNNs, with little to no loss in accuracy.},
               urldate = {2025-11-21},
               booktitle = {2024 29th {Asia} and {South} {Pacific} {Design} {Automation} {Conference} ({ASP}-{DAC})},
               author = {Tung, Caleb and Eliopoulos, Nicholas and Jajal, Purvish and Ramshankar, Gowri and Yang, Cheng-Yun and Synovic, Nicholas and Zhang, Xuecen and Chaudhary, Vipin and Thiruvathukal, George K. and Lu, Yung-Hsiang},
               month = jan,
               year = {2024},
               note = {ISSN: 2153-697X},
               keywords = {Training, Computational modeling, Parallel processing, Computer vision, Search methods, Convolution, Energy conservation},
               pages = {890--895},
               file = {Snapshot:/home/nicholas/Zotero/storage/Q7N67M8A/10473884.html:text/html;Submitted Version:/home/nicholas/Zotero/storage/Z6EDP3LX/Tung et al. - 2024 - An automated approach for improving the inference latency and energy efficiency of pretrained CNNs b.pdf:application/pdf},
            }

*******
 Video
*******

.. youtube:: YigEHy3_JCo
