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

            @inproceedings{jiang_empirical_2022,
               address = {New York, NY, USA},
               series = {{SCORED}'22},
               title = {An {Empirical} {Study} of {Artifacts} and {Security} {Risks} in the {Pre}-trained {Model} {Supply} {Chain}},
               copyright = {All rights reserved},
               isbn = {978-1-4503-9885-5},
               url = {https://dl.acm.org/doi/10.1145/3560835.3564547},
               doi = {10.1145/3560835.3564547},
               abstract = {Deep neural networks achieve state-of-the-art performance on many tasks, but require increasingly complex architectures and costly training procedures. Engineers can reduce costs by reusing a pre-trained model (PTM) and fine-tuning it for their own tasks. To facilitate software reuse, engineers collaborate around model hubs, collections of PTMs and datasets organized by problem domain. Although model hubs are now comparable in popularity and size to other software ecosystems, the associated PTM supply chain has not yet been examined from a software engineering perspective. We present an empirical study of artifacts and security features in 8 model hubs. We indicate the potential threat models and show that the existing defenses are insufficient for ensuring the security of PTMs. We compare PTM and traditional supply chains, and propose directions for further measurements and tools to increase the reliability of the PTM supply chain.},
               urldate = {2023-09-06},
               booktitle = {Proceedings of the 2022 {ACM} {Workshop} on {Software} {Supply} {Chain} {Offensive} {Research} and {Ecosystem} {Defenses}},
               publisher = {Association for Computing Machinery},
               author = {Jiang, Wenxin and Synovic, Nicholas and Sethi, Rohan and Indarapu, Aryan and Hyatt, Matt and Schorlemmer, Taylor R. and Thiruvathukal, George K. and Davis, James C.},
               month = nov,
               year = {2022},
               keywords = {empirical software engineering, machine learning, software reuse, software supply chain, deep neural networks, model hubs},
               pages = {105--114},
               file = {Full Text PDF:/home/nicholas/Zotero/storage/TT6JV3IL/Jiang et al. - 2022 - An Empirical Study of Artifacts and Security Risks.pdf:application/pdf},
            }
