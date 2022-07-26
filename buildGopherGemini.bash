#!/bin/bash

# Script meant to be ran on a server after cloning the `gh-pages` branch of this repository

rm -r gopher
rm -r gemini

mkdir gopher
find -L . -name "gophermap.txt" -exec rename ".txt"  '' {} \;
find -L . -name "gophermap" -exec cp --parents {} gopher \;

mkdir gemini 
find -L . -name "index.gmi" -exec cp --parents {} gemini \;
