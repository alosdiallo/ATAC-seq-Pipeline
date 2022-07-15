# ATAC-seq-Pipeline
This is a pipeline for running ATAC-seq analysis on HMS O2 cluster
Reference: https://informatics.fas.harvard.edu/atac-seq-guidelines.html

1: run fastqc to look at QC
2: map to genome using bowtiw 2
To run the mapper:
runAsPipeline mapping_script.sh "sbatch -A immdiv -p short -t 20:0 -n 1" noTmp run

3:convert sam files to bam format
4: Sort reads by name in the bam file
