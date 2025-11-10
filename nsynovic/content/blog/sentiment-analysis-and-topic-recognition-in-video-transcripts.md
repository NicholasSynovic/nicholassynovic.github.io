______________________________________________________________________

title: A summary of Sentiment Analysis and Topic Recognition in Video
Transcripts by Lukas Stappen et al. description: Posted in IEEE Computing Edge,
December 2022 summary: Posted in IEEE Computing Edge, December 2022

categories: \[summary, magazine, article, affective computing and sentiment
analysis\] citations: \[https://doi.org/10.1109/MIS.2021.3062200,
https://doi.org/10.1109/MIS.2020.2992799, https://sentic.net/,
https://www.muse-challenge.org/muse2022,
https://doi.org/10.48550/arXiv.1909.11942]

draft: false

## date: 2023-02-18T19:03:11-06:00 featured_image: '' include_toc: true markup: md outputs: [] show_comments: false toc: false show_reading_time: true

# A summary of *Sentiment Analysis and Topic Recognition in Video Transcripts*

> Lukas Stappen et al. Posted in IEEE Computing Edge, December 2022 DOI [0]

## Table of Contents

- [A summary of *Sentiment Analysis and Topic Recognition in Video Transcripts*](#a-summary-of-sentiment-analysis-and-topic-recognition-in-video-transcripts)
  - [Table of Contents](#table-of-contents)
  - [Summary](#summary)
    - [Related Work](#related-work)
    - [Methodology](#methodology)
    - [Dataset: The MuSe-Topic Subchallenge](#dataset-the-muse-topic-subchallenge)
    - [Exploratory Analysis](#exploratory-analysis)
      - [Speaker Topics](#speaker-topics)
      - [Emotions](#emotions)
    - [Prediction Results](#prediction-results)
      - [Speaker Topics](#speaker-topics-1)
      - [Emotions](#emotions-1)
  - [Citations](#citations)

______________________________________________________________________

## Summary

It is difficult to extract the sentiment and topic from a video transcript. With
this in mind, researchers developed SenticNet [2], a natural language processing
(NLP) model to identify the sentiment and topic of a transcript with far less
computational resources than previous attempts. The authors were able to achieve
3% better performance than previous solutions for the MuSe competition.

Multi-model sentiment analysis (MSA) is taking a variety of data streams and
information types and extracting sentiment from them. MSA research aims to
understand the sentiment holder, emotional disposition, and the reference
object. MSA typically works on video data as it includes visual (e.g., facial
expressions), audio, and textual (e.g., transcripts) data modalities.
Transcripts have been found to provide the greatest impact in understanding the
topic at hand.

The authors solution learned a continuous vector space of embeddings from the
symbolic space of words from the transcripts. To identify sentiments, their
solution adheres to the description of of sentiments defined by the *Hourglass
of Emotions* [1].

### Related Work

Human communication is a symbolic and naturally ordered within a structured
hierarchy. Current solutions to identifying sentiment from human communication
rely on synsets which are labels that indicate emotion and mood categories.
SenticNet has the largest amount of synsets with 200,000 concepts map words to a
sentiment.

Automated sentiment and aspect extraction is of interest within the MSA field.
Current solutions involve hand crafted features. The authors applied
"commonsense knowledge" about topic extraction involving several sentences.

### Methodology

First, natural world concepts are obtained using SenticNet. Versions 5 and 6 of
SenticNet were used as both extracted different sentics. Stop words were
removed. A linear SVM was applied on the vector word embeddings to predict the
valence, arousal, and topics of the transcript. To improve the generalization
between the feature maps, embedding dropout was used as well as time-step
dropout in order to drop entire embeddings rather than features.

### Dataset: The MuSe-Topic Subchallenge

The MuSe-CaR [3] dataset is a large, multi-modal dataset consisting of YouTube
videos of car reviews. The purpose of the dataset is to support MSA research.

The authors only used the language modality of the dataset and ignored the video
and audio modality. Recent advances in speech to text technologies have resulted
in near human performance.

For the MuSe-Topic challenge, the weighted score of the combination of the
unweighted average recall and micro F1 measures for each prediction (valence,
arousal, and topic) was reported.

### Exploratory Analysis

#### Speaker Topics

The concepts of semantics were used to identify the contextual information of
the video. These were used to understand the characteristic properties of the
video.

#### Emotions

SenticNet was used in an unsupervised fashion to identify the emotions of the
video from the contextual information.

### Prediction Results

#### Speaker Topics

The best performance measured achieved a score of 66.16% on the test dataset.
This was better than the LSTM approach the authors also tried. However, Albert
(an end-2-end NLP transformer for supervised NLP tasks) [4] still outperforms
this solution.

#### Emotions

SenticNet version 6 outperforms version 5 when identifying emotions.

______________________________________________________________________

## Citations
