#!/bin/bash

for file in ./src/*.md; do 
    filename=$(basename -- "$file" .md)
    pandoc --verbose --toc -M document-css=false -t $TYPE -i "$file" -o "${filename}.html" --filter pandoc-kroki --extract-media=./build; 
done
