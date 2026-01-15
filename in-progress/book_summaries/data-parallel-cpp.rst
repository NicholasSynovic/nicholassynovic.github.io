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

SYCL 1.2.1 vs. SYCL 2020, and DPC++
===================================

This book teaches data parallel C++ using the Khronos SYCL 1.2.1 language specification
to support parallel programming on *heterogeneous* systems (systems with more
than one device processing data together).

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

where :math:``p`` is the fraction of the program that runs in parallel. So if
:math:``\frac{2}{3}`` of the program runs in parallel, then the math works out to be

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

********************
 Where Code Executes
********************

Parallelism isn't about executing code in the fast lane, it's about executing
code fast in all lanes. This code goes over where code can execute, when it will
execute, and the mechanisms used to control the locations of execution.

Single-Source
=============

SYCL programs can be written within a single C++ file that defines all host,
device, and device kernel code. This is useful for debugging and organizing
code. However, this can lead to large, complex files. Breaking the file down
into discrete chunks (e.g., isolating functionality to specific libraries,
classes) can improve maintainability in the long run.

Host Code
---------

All SYCL applications contain C++ host code which is executed on the host
device. This code organizes and defines units of work for devices to operate on
and manages application state.

Device Code
-----------

Device code contains the kernels that operate on data loaded onto the device.
This code opperates asynchonusly from host code. Using a ``queue`` (a SYCL
provided class) enables orgnazing work into command groups. More on this later.

Choosing Devices
================

Five methods:

1. Letting the compiler decide where to run the device code. This is the least
   controllable option and is not recommended for application development.
2. Running device code on the host device. This is useful for debugging the
   application.
3. Running device code on *a* GPU or another accelerator.
4. Running device code on *multiple* GPUs or accelerators.
5. Selecting a specific device from a set of device classes (e.g., selecting a
   specifc GPU in a 4 GPU system).

Queues
======

A ``queue`` is a way of organizing and submitting actions to a specific device. A
``queue`` can only ever be assigned to one device, but a device can have multiple
``queues`` assigned to it.

``queue`` device assignment is handled at the creation of the ``queue`` through one
of the ``device_selector`` inhereting classes.

Actions
=======

Actions are functions that are executed on the device to manage kernels and
data. Built-in actions include:

- ``single_task`` for executing a single instance of a kernel on a device,
- ``parallel_for`` for executing a kernel multiple times,
- ``parallel_for_work_group`` kernel execution with hierarchical parallelism,
- ``copy`` for copying data between device locations or shared pointers,
- ``update_host`` for updating the host to backfill buffers, and
- ``fill`` initialize data in a buffer.

****************
 Data Management
****************

A major problem with writing and using parallized applications is "feeding the
beast", where the beast is the application and the food its being fed is data.
There are two ways to manage data via DPC++ and SYCL: Unified Shared Memory
(USM) and buffers. USM is pointer based, whereas buffers are a higher level
abstraction [3]_ .

The Data Management Problem
===========================

Heterogeneous applications have to deal with both host and device memory models.
A USM memory management solution is sometimes preferred as it simplifies the
interface for managing memory. Thus, the programmer only has to worry about the
traditional parallel memory challenges (e.g., race conditions, memory
synchronization).

Data can be stored locally on the compute device, or remotely in a different
memory pool. Remotely doesn't necessarily mean over the internet a remote memory
pool could be system's RAM pool from the perspective of an attached GPU device
with its own DRAM pool. Accessing remote memory comes at the cost of speed due
to bandwidth and latency restrictions.

Managing Multiple Memories
**************************

Multiple memories can be handled explicitly or implictely. Explicitly handling
memories can improve speed and ensure that data is handled efficiently at the
cost of introducing errors into the application. Implictely handling memories
by letting the runtime handle it can reduce errors at the cost of slower data
speeds [4]_ .

USM, Buffers, and Images
========================

USM is a pointer based approach for managing memory which is useful for
integrating into existing C++ applications. Buffers provide an interface for
one, two, and three dimensional arrays that hosts and devices can operate on.
Images are a subclasss of buffers that are specific for image processing.

USM provides an interface similar to ``memcpy()`` through the ``queue`` and
``handler`` classes. This is useful for explict memory management. Implicit
memory management is handled by just calling pointers inside the kernel code.

Buffers can contain many objects. Thus reading and writing to them is different
than operating on C++ arrays. To interface with a buffer, an ``accessor`` class
is necessary. Buffers can be set to be read, write, or read-write access modes.


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

.. [3]
   In my opinion, I prefer the abstraction. Less likely to create memory-based
   security vulnerabilities at the cost of speed.

.. [4] Similar to the previous comment, I prefer implicit over explict handling.
