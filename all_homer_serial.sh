#!/bin/sh

#Needs modules: 1) gcc/6.2.0   2) perl/5.30.0   3) homer/4.11.1 4) rcbio/1.3.3
# Instructions that helped me.
# First install a local copy of mm10: configureHomer.pl -install mm10
# Next you are missing some files.  Get them from the home module
# Copied /n/app/homer/4.11.1/.//data/genomes/mm10//preparsed/mm* to the folder with the genome

for narrowPeak in $PWD/Sample1.bam.sorted.bam.narrowPeak.fixed.narrowPeak

do

#create a prefix
#@1,0,homer,,sbatch -p medium -n 1 -t 20:00:00 --mem 120G -c 1

findMotifsGenome.pl "$narrowPeak" /home/ad249/scratch/ATACseqUnzip/bowtie_mapped_results/Bam_files/Sorted_bam/Peaks/data/genomes/mm10 /home/ad249/scratch/ATACseqUnzip/bowtie_mapped_results/Bam_files/Sorted_bam/Peaks/homer_results/1 -size 200

#@2,0,homer,,sbatch -p medium -n 1 -t 20:00:00 --mem 120G -c 1

findMotifsGenome.pl $PWD/Sample2.bam.sorted.bam.narrowPeak.fixed.narrowPeak /home/ad249/scratch/ATACseqUnzip/bowtie_mapped_results/Bam_files/Sorted_bam/Peaks/data/genomes/mm10 /home/ad249/scratch/ATACseqUnzip/bowtie_mapped_results/Bam_files/Sorted_bam/Peaks/homer_results/2 -size 200

#@3,0,homer,,sbatch -p medium -n 1 -t 20:00:00 --mem 120G -c 1

findMotifsGenome.pl $PWD/Sample3.bam.sorted.bam.narrowPeak.fixed.narrowPeak /home/ad249/scratch/ATACseqUnzip/bowtie_mapped_results/Bam_files/Sorted_bam/Peaks/data/genomes/mm10 /home/ad249/scratch/ATACseqUnzip/bowtie_mapped_results/Bam_files/Sorted_bam/Peaks/homer_results/3 -size 200

#@4,0,homer,,sbatch -p medium -n 1 -t 20:00:00 --mem 120G -c 1

findMotifsGenome.pl $PWD/Sample4.bam.sorted.bam.narrowPeak.fixed.narrowPeak /home/ad249/scratch/ATACseqUnzip/bowtie_mapped_results/Bam_files/Sorted_bam/Peaks/data/genomes/mm10 /home/ad249/scratch/ATACseqUnzip/bowtie_mapped_results/Bam_files/Sorted_bam/Peaks/homer_results/4 -size 200

#@5,0,homer,,sbatch -p medium -n 1 -t 20:00:00 --mem 120G -c 1

findMotifsGenome.pl $PWD/Sample5.bam.sorted.bam.narrowPeak.fixed.narrowPeak /home/ad249/scratch/ATACseqUnzip/bowtie_mapped_results/Bam_files/Sorted_bam/Peaks/data/genomes/mm10 /home/ad249/scratch/ATACseqUnzip/bowtie_mapped_results/Bam_files/Sorted_bam/Peaks/homer_results/5 -size 200

#@6,0,homer,,sbatch -p medium -n 1 -t 20:00:00 --mem 120G -c 1

findMotifsGenome.pl $PWD/Sample6.bam.sorted.bam.narrowPeak.fixed.narrowPeak /home/ad249/scratch/ATACseqUnzip/bowtie_mapped_results/Bam_files/Sorted_bam/Peaks/data/genomes/mm10 /home/ad249/scratch/ATACseqUnzip/bowtie_mapped_results/Bam_files/Sorted_bam/Peaks/homer_results/6 -size 200

#@7,0,homer,,sbatch -p medium -n 1 -t 20:00:00 --mem 120G -c 1

findMotifsGenome.pl $PWD/Sample7.bam.sorted.bam.narrowPeak.fixed.narrowPeak /home/ad249/scratch/ATACseqUnzip/bowtie_mapped_results/Bam_files/Sorted_bam/Peaks/data/genomes/mm10 /home/ad249/scratch/ATACseqUnzip/bowtie_mapped_results/Bam_files/Sorted_bam/Peaks/homer_results/7 -size 200

#@8,0,homer,,sbatch -p medium -n 1 -t 20:00:00 --mem 120G -c 1

findMotifsGenome.pl $PWD/Sample8.bam.sorted.bam.narrowPeak.fixed.narrowPeak /home/ad249/scratch/ATACseqUnzip/bowtie_mapped_results/Bam_files/Sorted_bam/Peaks/data/genomes/mm10 /home/ad249/scratch/ATACseqUnzip/bowtie_mapped_results/Bam_files/Sorted_bam/Peaks/homer_results/8 -size 200

#@9,0,homer,,sbatch -p medium -n 1 -t 20:00:00 --mem 120G -c 1

findMotifsGenome.pl $PWD/Sample9.bam.sorted.bam.narrowPeak.fixed.narrowPeak /home/ad249/scratch/ATACseqUnzip/bowtie_mapped_results/Bam_files/Sorted_bam/Peaks/data/genomes/mm10 /home/ad249/scratch/ATACseqUnzip/bowtie_mapped_results/Bam_files/Sorted_bam/Peaks/homer_results/9 -size 200

#@10,0,homer,,sbatch -p medium -n 1 -t 20:00:00 --mem 120G -c 1

findMotifsGenome.pl $PWD/Sample10.bam.sorted.bam.narrowPeak.fixed.narrowPeak /home/ad249/scratch/ATACseqUnzip/bowtie_mapped_results/Bam_files/Sorted_bam/Peaks/data/genomes/mm10 /home/ad249/scratch/ATACseqUnzip/bowtie_mapped_results/Bam_files/Sorted_bam/Peaks/homer_results/10 -size 200

#@11,0,homer,,sbatch -p medium -n 1 -t 20:00:00 --mem 120G -c 1

findMotifsGenome.pl $PWD/Sample11.bam.sorted.bam.narrowPeak.fixed.narrowPeak /home/ad249/scratch/ATACseqUnzip/bowtie_mapped_results/Bam_files/Sorted_bam/Peaks/data/genomes/mm10 /home/ad249/scratch/ATACseqUnzip/bowtie_mapped_results/Bam_files/Sorted_bam/Peaks/homer_results/11 -size 200

#@12,0,homer,,sbatch -p medium -n 1 -t 20:00:00 --mem 120G -c 1

findMotifsGenome.pl $PWD/Sample12.bam.sorted.bam.narrowPeak.fixed.narrowPeak /home/ad249/scratch/ATACseqUnzip/bowtie_mapped_results/Bam_files/Sorted_bam/Peaks/data/genomes/mm10 /home/ad249/scratch/ATACseqUnzip/bowtie_mapped_results/Bam_files/Sorted_bam/Peaks/homer_results/12 -size 200

#@13,0,homer,,sbatch -p medium -n 1 -t 20:00:00 --mem 120G -c 1

findMotifsGenome.pl $PWD/Sample13.bam.sorted.bam.narrowPeak.fixed.narrowPeak /home/ad249/scratch/ATACseqUnzip/bowtie_mapped_results/Bam_files/Sorted_bam/Peaks/data/genomes/mm10 /home/ad249/scratch/ATACseqUnzip/bowtie_mapped_results/Bam_files/Sorted_bam/Peaks/homer_results/13 -size 200


done
