#!/bin/bash

FILES=*.md

mkdir -p build

for file in $FILES; do
    echo "Building $file"
    pandoc --from=markdown --to=latex --output=build/$file.tex $file
done

cp latex/template.tex build/
pdflatex -output-directory=build build/template.tex
