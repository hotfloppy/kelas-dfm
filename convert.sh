#!/usr/bin/env bash

for file in $(ls *.md | grep -v READ); do
  echo
  echo "Converting $file into HTML, PDF and PPTX.."
  filename=${file%.*}
  marp --html $file --output ${filename}.html
  marp --pdf $file --output ${filename}.pdf
  marp --pptx $file --output ${filename}.pptx
  echo "Conversion for $file is done."
done
