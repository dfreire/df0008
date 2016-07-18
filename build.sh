#!/bin/bash

rm -rf README.md

for file in $(ls *-*.md)
do
  cat $file >> README.md
  printf '\n' >> README.md
done
