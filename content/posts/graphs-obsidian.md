---
title: Note Taking and Graph DBs
description: My experience with using Obsidian to take notes
summary: My experience with using Obsidian to take notes

aliases: []
audio: []
cascade: {}
date: 2022-07-23
draft: false
expiryDate: ''
featured_image: ''
headless: false
images: []
include_toc: true
shiow_comments: false
isCJKLanguage: false
keywords: []
layout: ''
lastmod: ''
linkTitle: ''
markup: md
outputs: []
publishDate: ''
private: false
resource: ''
series: ''
slug: ''
toc: true
type: ''
url: ''
videos: []
weight: 0
---

# Note Taking and Graph DBs

I enjoy note taking.

I think that taking notes all the time not only is a good habit, but reduces the
mental energy in trying to remember everything and anything. In tech terms, it
takes a significantly smaller footprint to store a pointer (location of a note)
in memory than everything within that note. This way, if someone says, "Hey
remember that thing last week", I can say, "No. But I did take a note of it, let
me see what we discussed | did | ... " and nearly instantly find the note in my
notebook or laptop.

Honestly, I could probably write about my note taking strategy and formats, as
well as the rules that I've developed for myself, but that isn't the point of
this article.

I want to talk about how using a *graph database* can improve **your** note
taking (if you're taking notes on a computer).

## Obsidian

I started to use the [Obsidian](https://obsidian.md/) software to take my notes.

I was drawn to it for a few reasons.

- It used markdown which, to me, is the fastest way to take notes
- It had pretty good shortcut keys out of the box
- It allows for extensions to expand the capabilities of the software
- It utilizes a graph database to link notes together

That last point is what I want to write about briefly.

By leveraging a graph database, Obsidian allows users to link notes together
based on tags rather than on hyper links. In other words, If I write a note such
as, "The perceptron is the building block of machine learning," I can reference
it elsewhere by tagging it like *#ml #perceptron #...*. Then, if I ever refernce
something else using the *#perceptron* tag and want to see related notes I've
made using that tag, I can search for *#perceptron* and get results both **in
file** and across **folders and subdirectories**. It is even possible to get
results from other folders not in the same branch!

It's a pretty cool searching feature that allows me to spend less time
remembering where I put every note about perceptrons, and spend more time
communicatiing my notes to others. Going back to the computer analogy, I no
longer need to store an array of file paths for each topic, rather, I now just
need to store the keys to a map/dictionary which will return me an array of note
file paths. Storing the keys to this map is so much easier to remember and
utilize than remembering an array (at least for me).

### The Graph Database

So I brought up tagging which is cool, but how does this have to do anything
regarding graph databases?

Obsidian automatically adds files and tags to a graph database which allows for
a visual representation of how each file is related to one another. This allows
for (what I call) meta-discovery of knowledge.

Meta-discovery is the act of finding out how each file relates to one another by
looking at their shared tags. This is of finding out how one subject relates to
another. In practice, it looks like this:

```
I have a note that contains the tags *#ml #perceptron #adaline #linear-seperability*.
Using Obsidian's graph database visualization, I can see that this particular file talks about those tags.

Now I have 100 files with a thousand tags total.
I can click on a tag and visualize the notes that reference a tag.
I can also click on a note and see what tags it references.
```

Both of these examples allow me to visualize the relatedness of notes and tags.

## Is It Perfect?

No.

I have forgone using technical terms in this article that properly describe
graph databases for the sake of talking about my experience with the tool. There
are many features not present in Obsidian that I wish were availible, such as
clicking on two tags to visualize the paths between each tag.

But Obsidian provides me with a way of referring to notes faster and more
effieciently than I have before.

So for that, it's alright in my book.

> I'm doing the [#100DaysToOffload](https://twitter.com/search?q=%23100daystooffload&src=typed_query) challenge.
> Check [my Twitter](https://twitter.com/nick_synovic) for updates!
