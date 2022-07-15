#!/bin/sh

for bam in $PWD/*.bam

do

#create a prefix
#@1,0,Samt,,sbatch -p short -n 1 -t 60:0 --mem 150G -c 15
samtools sort -n "$bam" -o "$bam".sorted.bam

done
