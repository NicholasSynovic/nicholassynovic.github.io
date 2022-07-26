#!/bin/bash

mkdir gopher
find -L . -name "gophermap.txt" -exec rename ".txt"  '' {} \;
find -L . -name "gophermap" -exec cp --parents {} gopher \;
mv gopher/public/* gopher/
rm -r gopher/public

mkdir gemini 
find -L . -name "index.gmi" -exec cp --parents {} gemini \;
mv gemini/public/* gemini/
rm -r gemini/public
