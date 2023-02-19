# [https://nsynovic.dev](https://nsynovic.dev)

> My personal website + blog

[![pages-build-deployment](https://github.com/NicholasSynovic/nsynovic.dev/actions/workflows/pages/pages-build-deployment/badge.svg?branch=gh-pages)](https://github.com/NicholasSynovic/nsynovic.dev/actions/workflows/pages/pages-build-deployment)

## Table of Contents

- [https://nsynovic.dev](#httpsnsynovicdev)
  - [Table of Contents](#table-of-contents)
  - [About](#about)
  - [Note About Aritcles on Other Platforms](#note-about-aritcles-on-other-platforms)
  - [Alternative Protocol Support](#alternative-protocol-support)
  - [How to Install](#how-to-install)
  - [How to Build](#how-to-build)
    - [Dependencies](#dependencies)
    - [Instructions for HTTP Site](#instructions-for-http-site)
    - [Instructions for Alternative Protocol Sites](#instructions-for-alternative-protocol-sites)

## About

This repository contains the source code for my website,
[https://nsynovic.dev](https://nsynovic.dev).

My website contains:

- My current resume and CV
- My work
- Blog posts and articles
- Links to all of my social media

I try my best to keep the website up to date, but no promises!

## Note About Aritcles on Other Platforms

There is a good chance that I'll be posting articles on other platforms (e.g.,
[Dev.to](https://dev.to), [Medium](https://medium.com)). However, all articles
will be originating from or posted to my website as well. This is part of my
attempt to centralize all of my activity on the Internet for others (and myself)
to be aware of.

## Alternative Protocol Support

This site supports the `gopher`, `gemini`, `spartan`, and eventually other
alt-internet protocols.

Here are the URLs to view this site via different protocols:

- `gopher` - gopher://tilde.team/1/~nosnow
  - I recommend using the `lynx` terminal webbrowser for this site
- `gemini` - gemini://tilde.team/1/~nosnow
  - I recommend using the `lagrange` GUI wbbrowser for this site
- `spartan` - spartan://tilde.team/1/~nosnow

Special thanks to the [tilde.team](https://tilde.team) community for freely
hosting my site on their server!

## How to Install

There is no installation process for this repository.

## How to Build

### Dependencies

This site is built using [Hugo](https://gohugo.io) and uses the
[Ananke theme](https://github.com/theNewDynamic/gohugo-theme-ananke).

### Instructions for HTTP Site

1. `git clone https://github.com/NicholasSynovic/nsynovic.dev.git`
2. `cd nsynovic.dev`
3. `git submodule init`
4. `git submodule update`
5. `hugo --minify --gc`

### Instructions for Alternative Protocol Sites

To build directories for each protocol:

1. `git clone https://github.com/NicholasSynovic/nsynovic.dev.git`
2. `cd nsynovic.dev`
3. `git checkout gh-pages`
4. `./buildGopherGemini.bash`

Output files are stored within their protocol name directories (e.g., `gopher`
-> gopher/) under the `public/` subfolder.
