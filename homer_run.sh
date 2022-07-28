#!/bin/sh

#Needs modules: 1) gcc/6.2.0   2) perl/5.30.0   3) homer/4.11.1 4) rcbio/1.3.3
# Instructions that helped me.
# First install a local copy of mm10: configureHomer.pl -install mm10
# Next you are missing some files.  Get them from the home module
# Copied /n/app/homer/4.11.1/.//data/genomes/mm10//preparsed/mm* to the folder with the genome

for narrowPeak in $PWD/*.fixed.narrowPeak

do

#create a prefix
#@1,0,homer,,sbatch -p short -n 1 -t 60:0 --mem 70G -c 1

findMotifsGenome.pl "$narrowPeak" /home/ad249/scratch/ATACseqUnzip/bowtie_mapped_results/Bam_files/Sorted_bam/Peaks/data/genomes/mm10 /home/ad249/scratch/ATACseqUnzip/bowtie_mapped_results/Bam_files/Sorted_bam/Peaks/homer_results -size 200

done


