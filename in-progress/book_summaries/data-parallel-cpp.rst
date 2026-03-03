:blogpost: true
:date: November 10, 2025
:category: Book Summary
:tags: HPC, CPP, 01-13-2026
:nocomments:

#################################################################################################
 *Data Parallel C++: Mastering DPC++ for Programming of Heterogeneous Systems using C++ and SYCL*
#################################################################################################

:bdg-primary:`Book Summary` :bdg-primary-line:`HPC` :bdg-primary-line:`CPP`
:bdg-link-primary-line:`doi:10.1007/978-1-4842-5574-2 <https://doi.org/10.1007/978-1-4842-5574-2>`

by James Reinders, Ben Ashbaugh, James Brodman, Michael Kinser, John Pennycook,
and Xinmin Tian
:cite:p:`reinders_data_2021`

*************
 Introduction
*************

Modern C++ code can run on most devices, including CPU (central processing
unit), GPU (graphics processing unit), GPGPU (general purpose graphics
processing unit), FPGA (full programmable gate array), DSP (digital signal
processing), ASIC (application-specific integrated circuit) devices.

SYCK 1.2.1 vs. SYCL 2020, and DPC++
===================================

This book teaches data parallel C++ using the Khronos SYCL 1.2.1 language to
support parallel programming on *heterogeneous* systems (systems with more than
one device processing data together).

Getting a DPC++ Compiler
========================

A data parallel C++ compiler that supports SYCL is availible to download as part
of the Intel OneAPI toolkit [1]_.

It Is All About Parallelism
===========================

Parallelism comes in two forms, *increased throughput* and *reduced latency*.

Throughput
----------

Increased throughput involves getting more work done in a set period of time.
An example would be that if it takes a set amount of time to deliver an Amazon
package (say 1 hour), then delivering a 100 packages would take 100 hours for a
single delivery driver. However, if we increase the number of delivery drivers
(lets say to 100 drivers), we can now deliver 100 packages in 1 hour.

Latency
-------

Reduced latency involves completing a single unit of work in a shorter period of
time. An example of this would be image processing. If it takes 1 minute to
process a single image, we could improve the performance by breaking that single
image down into small chunks, and processing each chunk in parallel. We still
only complete one unit of work --- a single image --- but we did it much faster
than before. Latency typically matters more when we need an immediate response,
throughput can be done for large batch jobs.

Amdahl and Gustafson
====================

Amdahl's Law (as stated by Gene Amdahl in 1967) :cite:p:`amdahl_validity_1967`
defines the theoretical maximum scaling (colloquially known as speed-up) as

.. math::

   \frac{1}{(1-p)}

where :math:`p` is the fraction of the program that runs in parallel. So if
:math:`\frac{2}{3}` of the program runs in parallel, then the math works out to be

.. math::

   \frac{1}{(1-\frac{2}{3})} = \frac{1}{\frac{1}{3}} = 3

meaning that the program could theoretically scale to 3x the performance if
parallelized. Unfortunately, this is a theoretical maximum, and perfection is
impossible due to bottlenecks (i.e., memory loading/unloading of data) [2]_.

Key Attributes of DPC++ and SYCL
================================

Every DPC++/SYCL program is also a C++ program. SYCL compilers exist because not
all C++ compilers support SYCL and its extensions.

Host
----

Every DPC++ program runs on a host device as its initial entrypoint. The host is
usually the CPU.

Device
------

A device is a hardware compute that work is distributed and executed on. This
can be the same as the host device, but it is usually a GPU or other hardware
device.

*************
 Bibliography
*************

.. bibliography::
   :filter: false

   reinders_data_2021
   amdahl_validity_1967
   gustafson_reevaluating_1988


.. [1]
   https://www.intel.com/content/www/us/en/developer/tools/oneapi/overview.html

.. [2]
   It should be noted that Amdahl's Law was used as justification *against*
   parallelism and it wasn't until John Gustafson recontextualized the law with
   respect to scaling up the amount of work that could be done in the same
   period of time :cite:p:`gustafson_reevaluating_1988`.
