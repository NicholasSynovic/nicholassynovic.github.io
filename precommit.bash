#!/bin/bash

rm -r public/
rm -r gopher/
rm -r gemini/

hugo --minify

cp CNAME public/ 

mkdir gopher
find -L public -name "gophermap.txt" -exec rename ".txt"  '' {} \;
find -L public -name "gophermap" -exec cp --parents {} gopher \;
mv gopher/public/* gopher/
rm -r gopher/public

mkdir gemini 
find -L public -name "index.gmi" -exec cp --parents {} gemini \;
mv gemini/public/* gemini/
rm -r gemini/public
