---
title: A summary of Challenges and Opportunities for Autonomous Micro-UAVs in Precision
  Agriculture by Xu Liu et al.
description: Posted in IEEE Computer Volume 55; Issue 4, 2022
summary: Posted in IEEE Computer Volume 55; Issue 4, 2022

categories: [summary, magazine, article, expert opinion]
citations: [https://doi.org/10.1109/MM.2021.3134744, https://doi.org/10.1109/ICRA.2018.8463214]

draft: true

date: 2023-02-18T13:08:36-06:00
featured_image: ''
include_toc: true
markup: md
outputs: []
show_comments: false
toc: false
show_reading_time: true
---

# A summary of *Challenges and Opportunities for Autonomous Micro-UAVs in Precision Agriculture*

> Xu Liu et al. IEEE Computer Volume 55; Issue 4, 2022 DOI \[0\]

## Table of Contents

- [A summary of *Challenges and Opportunities for Autonomous Micro-UAVs in Precision Agriculture*](#a-summary-of-challenges-and-opportunities-for-autonomous-micro-uavs-in-precision-agriculture)
  - [Table of Contents](#table-of-contents)
  - [Summary](#summary)
    - [UAV Hardware and Autonomy](#uav-hardware-and-autonomy)
      - [UAV Platforms and Autonomy](#uav-platforms-and-autonomy)
    - [Sensor Configuration](#sensor-configuration)
  - [Citations](#citations)

______________________________________________________________________

## Summary

Unmanned ground and areal vehicles (UGVs and UAVs respectfully) are utilized for
precision agriculture. UGVs can carry a larger payload and can run longer, but
suffer from only being operational within 2D space. UAVs have the benefit of
being able to navigate rougher terrains in 3D space, but suffer from limited
flight times and smaller payloads. This article aims to survey the recent
advances in UAV technologies applied to precision farming and to present
opportunities for improvement.

There are many agriculture issues that exist in our world today. Over 700
million people are malnourished, 70% of fresh water is utilized by agriculture
domains, and advancements made on micro scales do not scale to the macro
environment. Having more data from autonomous sensors and vehicles will help
improve the realizations of scientific advancements in scale.

Current UGV technologies suffer from being able to only see points of interest
close to vehicle, they can not survey large areas quickly, and they are unable
to navigate rough agriculture environments (i.e rice fields). UAVs do not suffer
from these drawbacks, however, to work for precision agriculture, UAV
technologies need to work close to crops (under canopy flight), must have
reliable relative coordinate reporting, handle a dynamic environment in PD space
(i.e wind, rocks, hills), and must be able to map dense environments. There have
been some under canopy tests that have been performed to limited success.
However, these were only applied in small scale environments and haven't been
tested in larger environments.

### UAV Hardware and Autonomy

Current autonomous UAV technologies are available, but their usage is limited.
They currently are reliant upon GPS, which requires an open canopy, making under
canopy flight currently impossible. Additionally, complex tasks such as
segmentation of fruits or trees is not possible at this time.

#### UAV Platforms and Autonomy

Several different autonomous systems have been proposed for under-canopy
autonomous flight.

These include:

- "... A stereo visual-inertial odometry (VIO) algorithm was used for state
  estimation, a 2-D light detection and ranging (LiDAR) mounted on a nodding
  gimbal was used for mapping and obstacle avoidance, and a search-based motion
  planner was used for motion primitives plans collision-free and dynamically
  feasible trajectories," \[1\]
- A vision based solution that can navigate in both structured and moderately
  unstructured environments (i.e. a collapsed building) \[2\]
- A system of using many UAVs that work together and coordinate through a
  simultaneous localization and mapping (SLAM) scheme with loop closure that
  utilized trees as landmarks was tested \[3\], but could fail when operating
  within a dense forest

A limitation with all of these systems so far is that they are unable to work in
long range agricultural missions and they are unable to identify objects in real
time and at scale.

### Sensor Configuration

______________________________________________________________________

## Citations
