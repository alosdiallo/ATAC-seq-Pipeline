#!/bin/sh

for peak in $PWD/*.narrowPeak

do

awk -v OFS="\t" '$1=$1' $peak > $peak.fixed.narrowPeak

done
