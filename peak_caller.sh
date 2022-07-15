#!/bin/sh

for bam in $PWD/*.sorted.bam

do

#create a prefix
#@1,0,Samt,,sbatch -p short -n 1 -t 60:0 --mem 70G -c 1
Genrich  -t "$bam" -o "$bam".narrowPeak  -j  -y  -r  -v -q .05 -a 20

done
