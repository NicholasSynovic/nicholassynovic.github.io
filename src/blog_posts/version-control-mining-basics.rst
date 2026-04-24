:blogpost: true
:category: Blog Post
:tags: Software Engineering, Git, Mining
:nocomments:

***************************************
*What Is Version Control System Mining?*
***************************************

:bdg-primary:`Blog Post` :bdg-primary-line:`Software Engineering` :bdg-primary-line:`Git` :bdg-primary-line:`Mining`

Version control system mining, otherwise known as software repository mining, is the act of extracting facts about a software system from its source code.
These facts can be broadly classified as either **code**- or **process**-oriented facts.
For example, code facts can include the number of lines of code, the programming language or languages used, or the number of methods and classes.
Process facts align with the software engineering process that produced the system, including who wrote parts of the code, when they wrote it, and architectural decisions.

These facts are typically referred to as **metrics**, meaning that they are measured by an established process and are quantifiable.
**Base metrics** are metrics that can be directly computed from the repository.
For example, the number of lines of code in a repository can be computed by identifying and counting the number of lines of code in each file.
**Derived metrics** are metrics that rely on two or more metrics to compute.
For example, issue density, or the number of issues per 1,000 lines of code, is computed by taking the total number of *open* issues from a software repository and dividing it by the number of lines of code in that repository.

Nearly all source-available software repositories, including repositories that do not leverage formal version control tooling (e.g., ``git``), can be mined.
However, for projects that do leverage formal version control tooling, miners are able to not only extract information about the current software system revision, but also about all previous revisions.
This enables a **longitudinal study** of the software repository project from its inception to the present day.
By leveraging the timeline of revisions, miners can ask and answer questions regarding the potential quality, stability, and security of the project.

For example, you could potentially measure quality (although I do not recommend this method; see the note) by computing the Halstead complexity of the project at each revision and seeing how it increases or decreases over time.
Stability could be measured by identifying the number of new features compared to issue and security revisions made.
Security metrics can be made by running security linters on the source code for each revision and counting the number of issues reported.

I want to make clear that I recognize metrics are not perfect; individual metrics tell you a facet of the system without considering the whole.
Even combining multiple metrics may not adequately capture the system's capabilities.
Additionally, metrics do not tell you *why* something happened, only that it did.
If you take anything away from this post, others, or academic articles on the subject, do not extrapolate why something happened solely from a single metric, or multiple metrics, without a clear understanding of how those metrics relate to one another.

.. note::

   I do not recommend using Halstead complexity *solely* to compute software system quality.
   Quality means many different things to many different people.
   I recommend computing different code and process metrics and comparing one system's metrics to competing systems to understand which is more suitable for the application at hand.

########################################
Who Cares About Version Control Mining?
########################################

Software engineers, project managers, business people, and academic researchers care about version control mining.
The information that can be obtained by mining a project's revision history informs:

- Software engineers about progress made and potential improvements,
- Project managers about the expected timeline for features to be implemented or issues to be resolved,
- Business people who market software products and compare theirs against competitors, and
- Academic researchers trying to understand what software engineers are practicing when creating their projects.

##########################################
When Is Version Control Mining Important?
##########################################

Arguably, this is a personal and project-specific choice.

Computing metrics per revision can provide insights into what is currently happening, but can be misleading.
For example, adding 100 lines of code in the latest revision may seem like work is actively being done by the engineer, but if by the end of the day those same lines of code are deleted, then it raises the question (among others) of whether it was productive work.

Computing metrics per system release or agile sprint is another common time to compute metrics.
While these metrics do provide holistic information about the system in its most stable cycle, without comparing the results to historical releases or revisions, we lack the background for how these metrics were arrived at.
For example, if the total number of open issues at release ``2.0.0`` is 10, but we do not check how many issues were open at ``1.0.0`` for comparison, we do not know if 10 is a large, small, or consistent number of issues.

I recommend computing metrics on a per-sprint or monthly basis, with per-day computation being excessive but still more useful than per revision.
These metrics should not be presented as snapshots of the current state of the system, but also compared to historical metrics to identify trends, patterns, and induce conversations about how to further improve the system toward some goal.

########################
Where Can I Learn More?
########################

*****
Books
*****

.. note::

   Book links point to Amazon. I am not affiliated with, nor do I profit from, these links.

- `Software Metrics: A Rigorous and Practical Approach (Third Edition) by Norman Fenton and James Bieman <https://www.amazon.com/Software-Metrics-Rigorous-Practical-Approach/dp/0367659026>`__
- `Agile Metrics in Action: How to Measure and Improve Team Performance by Christopher Davis <https://www.amazon.com/Agile-Metrics-Action-measure-performance-ebook/dp/B0977ZXGSF>`__
- `Software Metrics: Establishing a Company-Wide Program by Robert B. Grady and Deborah L. Caswell <https://www.amazon.com/Software-Metrics-Establishing-Company-Wide-Program/dp/0138218447>`__

******
Papers
******

- N. U. Eisty, G. K. Thiruvathukal, and J. C. Carver, "A Survey of Software Metric Use in Research Software Development," in 2018 IEEE 14th International Conference on e-Science (e-Science), Amsterdam: IEEE, Oct. 2018, pp. 212-222. DOI: `10.1109/eScience.2018.00036 <https://doi.org/10.1109/eScience.2018.00036>`__.
- F. Rahman and P. Devanbu, "How, and why, process metrics are better," in 2013 35th International Conference on Software Engineering (ICSE), May 2013, pp. 432-441. DOI: `10.1109/ICSE.2013.6606589 <https://doi.org/10.1109/ICSE.2013.6606589>`__.
- N. M. Synovic et al., "Snapshot Metrics Are Not Enough: Analyzing Software Repositories with Longitudinal Metrics," in Proceedings of the 37th IEEE/ACM International Conference on Automated Software Engineering, in ASE '22. New York, NY, USA: Association for Computing Machinery, Jan. 2023, pp. 1-4. DOI: `10.1145/3551349.3559517 <https://doi.org/10.1145/3551349.3559517>`__.

***********
Conferences
***********

- `Mining Software Repositories (MSR) <https://www.msrconf.org/>`__
- `Automated Software Engineering (ASE) <https://www.ase-conferences.org/>`__

######################
How Do I Get Started?
######################

There are a number of language-specific and language-agnostic tools that you can use to get started.
Source code counters include `cloc <https://github.com/AlDanial/cloc>`__, `sloccount <https://dwheeler.com/sloccount/>`__, `scc <https://github.com/boyter/scc>`__, and `tokei <https://github.com/XAMPPRocky/tokei>`__, among others.
Security tools such as `bandit <https://github.com/PyCQA/bandit>`__, `cppcheck <http://cppcheck.net/>`__, and `spotbugs <https://github.com/spotbugs/spotbugs>`__ can help you find bugs in Python, C/C++, and Java projects, respectively.
Other auditing tools include `scancode <https://github.com/aboutcode-org/scancode-toolkit/>`__, `sonarqube <https://www.sonarsource.com/products/sonarqube/>`__, `OpenSSF Scorecard <https://openssf.org/projects/scorecard/>`__, and `licensee <https://github.com/licensee/licensee>`__.
If you are looking for an all-in-one tool, I recommend `prime <https://github.com/NicholasSynovic/prime>`__.
In short, there are a plethora of tools available to mine version control software system repositories.

As a researcher, I recommend the Fenton and Grady books and the Synovic paper (I'm the author) to get started with computing metrics.
Fenton provides both an introduction to what metrics are, how and why to compute them, and concrete examples.
Grady explains how to apply these to make decisions and why, from a business perspective, metrics are important to incorporate.
Synovic discusses the difference between snapshot and longitudinal metrics and proposes a tool (that we will build on and extend in future posts) to compute derived process metrics from open-source GitHub repositories.

And, if you made it this far, please see `my blog <https://nicholassynovic.github.io>`__ for more information on how to compute software metrics and their applications.
