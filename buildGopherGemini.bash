#!/bin/bash

mkdir gopher
find -L . -name "gophermap.txt" -exec rename ".txt"  '' {} \;
find -L . -name "gophermap" -exec cp --parents {} gopher \;

mkdir gemini 
find -L . -name "index.gmi" -exec cp --parents {} gemini \;
