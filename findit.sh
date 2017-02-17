#!/bin/bash
# usage (after making executable): 
# ./findit.sh /scratch2/scratchdirs/nugent/astro250/hwk1/

dir=$1

for i in $(ls $dir*fits)
do # iterate through the list of fits files
  prefix=${i%.*}
  if [ ! -e "$prefix.cat" ]
  then
       echo "$prefix.cat"
  fi
done

