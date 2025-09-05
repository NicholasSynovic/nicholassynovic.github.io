---
title: 'Introducing acolor: A small utility to print ANSI color codes'
description: 'Introducing acolor: A small utility to print ANSI color codes'
summary: 'Introducing acolor: A small utility to print ANSI color codes'

categories: ['']
citations: ['']

draft: false

date: 2024-12-31T08:08:00-05:00
featured_image: ''
include_toc: true
markup: md
outputs: []
show_comments: false
toc: false
show_reading_time: true
---

In my previous post, I wrote about a tool I wanted to create to print ANSI color codes to the console. I currently need a this as I am "prettifying" my shell prompt at the moment and figured it would just be faster to leverage this tool over Googling the necessary shell codes.

So I created `acolor`, an open-source Python utility built on top of `colorist` to provide a convient way to output ANSI color codes to the terminal. Currently, only named color codes are supported (e.g., red, green, blue). Hex, HSL, VGA, and RGB color codes are currently not supported but `acolor` can easily be extended to include them.

You can view the source code [here](https://github.com/NicholasSynovic/acolor). You can install it with `pipx` via:

`pipx install git+https://github.com/NicholasSynovic/acolor`

Here are the current command line options of the applicaton:

```shell
acolor --help

Usage: acolor [OPTIONS]

Options:
  -c, --color TEXT  Color name to generate ANSI code
  -r, --reset       Print ANSI reset code
  --help            Show this message and exit.
```

Here's an example usage:

```shell
$ acolor --color red
'\x1b[31m'

$ acolor --reset
'\x1b[0m'

$ acolor --color test
test is not a valid color: dict_keys(['BLACK', 'RED', 'GREEN', 'YELLOW', 'BLUE', 'MAGENTA', 'CYAN', 'WHITE'])
```
