#!/bin/bash

# Script meant to be ran on a server after cloning the `gh-pages` branch of this repository

rm -r gopher
rm -r gemini

mkdir gopher
find -type f -name '*.txt' -print0 | while read -d $'\0' f; do mv "$f" "${f%.txt}"; done
find -L . -name 'gophermap' -exec fold -w 67 -s {} \;
# find -L . -name "gophermap.txt" -exec rename ".txt"  '' {} \;
find -L . -name "gophermap" -exec cp --parents {} gopher \;

mkdir gemini 
find -L . -name "index.gmi" -exec cp --parents {} gemini \;
