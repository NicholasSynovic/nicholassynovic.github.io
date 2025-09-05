---
title: A summary of Sustainable and Trustworthy Edge Machine Learning by Ivona Brandic
description: Posted in the IEEE Computing Edge, January 2023
summary: Posted in the IEEE Computing Edge, January 2023

categories: [summary, magazine, article, view from the cloud]
citations: [https://doi.org/10.1109/MIC.2021.3104383]

draft: false

date: 2023-02-22T16:27:27-06:00
featured_image: ''
include_toc: true
markup: md
outputs: []
show_comments: false
toc: false
show_reading_time: true
---

# A summary of *Sustainable and Trustworthy Edge Machine Learning*

> Ivona Brandic; IEEE Computing Edge, January 2023 DOI [0]

## Table of Contents

- [A summary of *Sustainable and Trustworthy Edge Machine Learning*](#a-summary-of-sustainable-and-trustworthy-edge-machine-learning)
  - [Table of Contents](#table-of-contents)
  - [Summary](#summary)
    - [Data Intensive Applications](#data-intensive-applications)
    - [Hyper Heterogeneous Hardware](#hyper-heterogeneous-hardware)
    - [Challenges In Terms Of Sustainability And Trustworthiness](#challenges-in-terms-of-sustainability-and-trustworthiness)
    - [Trustworthiness In Rucon: Fault Tolerance](#trustworthiness-in-rucon-fault-tolerance)
    - [Sustainability In Rucon: Model Distribution For Edge Machine Learning](#sustainability-in-rucon-model-distribution-for-edge-machine-learning)
    - [Sustainability And Trustworthiness In Rucon: Data Quality Management](#sustainability-and-trustworthiness-in-rucon-data-quality-management)
  - [Citations](#citations)

______________________________________________________________________

## Summary

Understanding the trustworthiness of the system traditionally involved creating
complex mathematical abstractions of the system. The author's of this article
propose an orthogonal, data driven, and probabilistic model called Rucon
(Runtime Control on Multi-Clouds). Rucon is able to scale accordingly and model
complex, data driven systems.

IoT devices are revolutionizing many sectors by providing near real time data
feeds. These feeds, to be of use, need to be analyzed in real time. Because of
this, there is a move towards understanding and modeling this "tactile
internet".

One of the problems with the tactile internet is that it generates Extreme Data,
which is a step above Big Data. The challenges of Extreme Data is that it
requires near exascale computing resources to process this data. Additionally,
this data is not generated from a single source or even geographic location.
Therefore, there is a problem in modeling the flow data within systems that
utilize both Extreme Data and the tactile internet.

### Data Intensive Applications

Applications on the tactile internet are not solely based on cloud computing
resources like traditional ML applications.

### Hyper Heterogeneous Hardware

Edge devices simply collect data; they do not compute any data on device.
Therefore, they are dependent upon nearby devices to process the data to perform
ML analysis. This is known as Edge Machine Learning (EML).

There is a move to equipping centers of IoT activity with 5G connectivity to
send data to onsite micro data centers that consist of a few Raspberry Pis.

### Challenges In Terms Of Sustainability And Trustworthiness

In traditional ML apps running on the cloud, the solution to sustainability is
to shut down VMs that have low resource utilization. However, tactile internet
apps receive data from many sensors continuously.

To model both the sustainability and trustworthiness challenges of both ML for
the Edge and at the Edge, the authors created the Rucon architecture. Rucon was
developed with hyper heterogeneous systems in mind, and is capable of dealing
with the geographic distribution, intermittent connectivity, and low
availability of processing nodes within a tactile internet application. It
introduces:

- A novel fault tolerance and trustworthiness method based on Dynamic Bayesian
  Networks to address ML for the Edge.
- A sustainable model management approach for geographically distributed ML to
  address ML at the Edge.
- A sustainable and trustworthy method for data quality management for failure
  prone IoT devices for both ML at and for the Edge.

### Trustworthiness In Rucon: Fault Tolerance

Edge device systems fail more often than large traditional systems. To address
this, it is best practice to implement many geographically close edge devices
and perform spatial-temporal rollover to the next closest device. In other
words, when one device fails, continue processing on the next device. However,
the problem with this system is that geographically close nodes often fail
together. To address this, Rucon using Dynamic Bayesian Networks to predict when
a node will fail as well as what other nodes will be taken offline by a single
node failure. This information can be used to preemptively address nodes prior
to failure. They were able to decrease the redundancy loss by 50% compared to
their baseline.

### Sustainability In Rucon: Model Distribution For Edge Machine Learning

ML models are developed and trained on large cloud computers. Reduced versions
of these models are then deployed to edge devices. However, in a geographically
distributed system, these models can go in an out of sync with one another. This
means that some models may lose accuracy depending upon the data that they
process over time. An example would be that edge devices in urban environments
would be trained to recognize pedestrians better than devices deployed in rural
environments. Thus, to keep all devices in sync, a traditional system would
constantly update nodes with the latest model. However, on edge devices were
connectivity is limited, this would incur a significant messenger cost.
Therefore, Rucon uses a reinforcement learning algorithm for update scheduling
and synchronization of edge nodes. After training on a dataset of smart
vehicles, Rucon was able to save 90% of model updates while maintaining a
suitable level of model synchronization.

### Sustainability And Trustworthiness In Rucon: Data Quality Management

Data quality can become inconsistent with a geographically distributed system.
To address this, the Rucon has a number of data recovery techniques to recover
gaps in datasets. These include the auto regressive integrated moving average,
exponential smoothing method, and data clustering to identify outliers.

______________________________________________________________________

## Citations
