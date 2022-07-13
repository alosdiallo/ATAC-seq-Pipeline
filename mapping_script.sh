#!/bin/sh

# You need to load this first module load rcbio/1.3
# module load gcc/6.2.0
# module load bowtie2/2.3.4.3
# module load samtools/1.15.1

for R1 in *R1*;

do

#create prefix
sample=$(echo "$R1" | cut -f 1 -d '_')

#run bowtie2 on all files
#@1,0,bowtie2,,sbatch -p medium -n 1 -t 20:00:00 --mem 20G -c 20
bowtie2 -x /n/groups/shared_databases/bowtie2_indexes/mm10 -1 "$sample"_R1.fastq -2 "$sample"_R2.fastq --no-unal -p 20 -S ~/scratch/ATACseqUnzip/bo
wtie_mapped_results/"$sample".sam

done

