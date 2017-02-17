#!/bin/bash

dir=$1

for i in $(ls $dir*fits)
do # iterate through the list of fits files
  foundMatch=0
  prefix=${i%.*}
  for j in $(ls $dir*.cat)
  do # iterate through the list of cat files
  prefix2=${j%.*}
  if [[ $prefix == $prefix2 ]]; then
      foundMatch=1
      break
  fi
  done     
  if [[ $foundMatch == 0 ]]; then
    echo $i
  fi
done

