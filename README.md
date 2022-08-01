# [https://nsynovic.dev](xhttps://nsynovic.dev)

> My personal website + blog

[![pages-build-deployment](https://github.com/NicholasSynovic/nsynovic.dev/actions/workflows/pages/pages-build-deployment/badge.svg?branch=gh-pages)](https://github.com/NicholasSynovic/nsynovic.dev/actions/workflows/pages/pages-build-deployment)

## About

[https://nsynovic.dev](https://nsynovic.dev) is the site where I:

- Showcase my work
- Post blogs
- Attempt to centralize social media posts

## Gopher, Gemini, Spartan, etc. Protocol Support

This site supports the `gopher`, `gemini`, `spartan`, and other *small* protocols.

To build directories for each protocol:

1. Clone this repository
1. Checkout the `gh-pages` branch
1. Run `./buildGopherGemini.bash`

**NOTE:** the `buildGopherGemini.bash` relies on `rename` from version 2.38 of the [`util-linux`](https://github.com/util-linux/util-linux) package.

Use the newly created `gopher` and `gemini` folders with their respective protocols.

## Develop and/or Contribute

[https://nsynovic.dev](https://nsynovic.dev) is a static site that is built
using [Markdown](https://github.github.com/gfm/) and [Hugo](https://gohugo.io).

The Hugo theme that I'm using is a my fork of the
[Ananke theme](https://github.com/theNewDynamic/gohugo-theme-ananke).
