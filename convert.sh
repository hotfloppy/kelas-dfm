#!/usr/bin/env bash

if [[ $# -gt 0 ]]; then
  filelist="$1"
else
  filelist=($(ls *.md | grep -v READ))
fi

for file in ${filelist[@]}; do
  echo
  echo "Converting $file into HTML, PDF and PPTX.."
  filename=${file%.*}
  marp --html "$file" --output ${filename}.html
  marp --pdf "$file" --output ${filename}.pdf
  marp --pptx "$file" --output ${filename}.pptx
  echo "Conversion for $file is done."
done
