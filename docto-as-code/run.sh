#!/bin/bash

for file in ./src/*.md; do 
    filename=$(basename -- "$file" .md)
    pandoc --verbose -s --table-of-contents --toc-depth 4 -M document-css=false  -i "$file" -o "${filename}.html" --filter pandoc-kroki --extract-media=./build; 
done
