---
title: A summary of Challenges and Opportunities for Autonomous Micro-UAVs in Precision
  Agriculture by Xu Liu et al.
description: Posted in IEEE Computer Volume 55; Issue 4, 2022
summary: Posted in IEEE Computer Volume 55; Issue 4, 2022

categories: [summary, magazine, article, expert opinion]
citations: [https://doi.org/10.1109/MM.2021.3134744, https://doi.org/10.1109/ICRA.2018.8463214,
  https://doi.org/10.1002/rob.21950, https://doi.org/10.1177/0278364920929398, https://doi.org/10.1109/TPAMI.2020.3005434]

draft: false

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
      - [Challenges](#challenges)
    - [Object Detection and Segmentation](#object-detection-and-segmentation)
      - [Image-Based (2-D)](#image-based-2-d)
      - [LiDAR-Based (3-D)](#lidar-based-3-d)
      - [Challenges](#challenges-1)
    - [Robot Localization and Mapping](#robot-localization-and-mapping)
      - [Semantic Localization and Mapping](#semantic-localization-and-mapping)
      - [Challenges](#challenges-2)
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
to navigate rough agriculture environments (i.e.,, rice fields). UAVs do not
suffer from these drawbacks, however, to work for precision agriculture, UAV
technologies need to work close to crops (under canopy flight), must have
reliable relative coordinate reporting, handle a dynamic environment in PD space
(i.e.,, wind, rocks, hills), and must be able to map dense environments. There
have been some under canopy tests that have been performed to limited success.
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
  unstructured environments (i.e., a collapsed building) \[2\]
- A system of using many UAVs that work together and coordinate through a
  simultaneous localization and mapping (SLAM) scheme with loop closure that
  utilized trees as landmarks was tested \[3\], but could fail when operating
  within a dense forest

A limitation with all of these systems so far is that they are unable to work in
long range agricultural missions and they are unable to identify objects in real
time and at scale.

#### Sensor Configuration

Sensors on UAVs are used for both autonomy and for collecting mission specific
data. The most common sensors on UAVs are cameras, inertial measurement units
(IMUs), LiDARs, and global navigation satellite systems (GNSS). These sensors
must be lightweight because multi-rotor UAVs consume 100 - 200 W/kg.

Cameras and IMUs are great for navigation and obstacle avoidance. However,
cameras are easily susceptible to changes in lightness and darkness. Thus
obstacle avoidance becomes difficult when lighting is patchy.

LiDAR sensors can be used to reduce this issue, however, current LiDAR
technology is expensive, heavy, and still under much research.

GNSS technologies (i.e., GPS) allow for geospatial positioning. However, if
there are obstacles in the way, the accuracy decreases. There do exists
optimizations to improve geospatial coordination and positioning, such as GPS
ground stations (DGPS) and real time kinematics (RTK). However, these solutions
must be both real time and reliable to resolve accuracy concerns.

#### Challenges

Detection of small obstacles is difficult with conventional camera systems. Thus
a forward facing, solid state LiDAR solution has been proposed to mitigate this.
However, the 360 degree view that LiDAR provides is lost because all of the
LiDAR beams are focused at the front of the device in order to gain resolution.

Smaller UAVs can be more nimble, however, there is a weight to power and a
weight to flight time concern with these devices.

Running deep neural network (DNN) algorithms on board a UAV is critical for low
latency, real time data collection, estimation, and understanding. However,
current DNN algorithms are computationally expensive to run. It is predicted
that more efficient algorithms, as well as the usage of AI accelerators, will
help mitigate this problem.

### Object Detection and Segmentation

Object detection and segmentation are critical to precise agriculture as plant
or fruit specific data can be captured and acted upon.

#### Image-Based (2-D)

RGB, multi and hyper spectral imaging, thermal, and near-infrared imaging have
been used to perform object detection on plants. Previous methods involved using
K-Means algorithms and SVMs to solve detection and segmentation problems.
Recently, DNN based solutions are becoming more popular and additional sensor
data from the ground is also inputted into these algorithms to provide more
accurate results.

#### LiDAR-Based (3-D)

LiDAR based CV solutions are relatively new to the agriculture space. To
represent the problem domain, LiDAR captures data in the forms including a voxel
grid, point clouds, and multi-view and/or spherical images. It has been found
that voxel grid based convolutional neural networks (CNNs) are susceptible to
noise, whereas point clouds are not as affected. It is possible to join LiDAR
point cloud data and a spherical range image together and pass the union of this
data into a CNN to reduce information loss \[4\].

#### Challenges

It is difficult to acquire large, high-quality agriculture specific datasets to
train models on object detection and segmentation. Furthermore, occlusion
(e.g.,, not being able to see the plant or fruit) is still a problem that is
trying to be solved.

### Robot Localization and Mapping

Mapping refers to the act of creating an understanding of an environment for an
autonomous robot to adhere to. Potential solutions require the input of
knowledge about the structure of the field.

#### Semantic Localization and Mapping

Semantic features allows the robot to generate a meaningful map of the
environment and assist in pose estimation. The usage of locating and
representing trees as points of interests has been studied and found to be
useful for identifying local regions.

#### Challenges

SLAM is able to performing mapping quite well in man made environments. However,
new technologies must be developed to assist with the mapping of natural
environments. Active mapping (where an autonomous agent maps out its environment
in real time) is difficult to do in an agriculture context as fields can be
quite large and contain a dense information mapping.

______________________________________________________________________

## Citations
