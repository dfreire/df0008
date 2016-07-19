#!/bin/bash

rm -rf README.md

for file in $(ls sections/*.md)
do
  echo $file
  cat $file >> README.md
  printf '\n' >> README.md
done
