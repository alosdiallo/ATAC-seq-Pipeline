# ATAC-seq-Pipeline
This is a pipeline for running ATAC-seq analysis on HMS O2 cluster
Reference: https://informatics.fas.harvard.edu/atac-seq-guidelines.html

1: run fastqc to look at QC

2: map to genome using bowtiw 2
To run the mapper:
runAsPipeline mapping_script.sh "sbatch -A immdiv -p short -t 20:0 -n 1" noTmp run

3:convert sam files to bam format

4: Sort reads by name in the bam file

5: Add this line to start of each file:
track type=narrowPeak 

6:To fix line issues, run this for each file:
Now done via script.
awk -v OFS="\t" '$1=$1' Sample9.bam.sorted.bam.narrowPeak > Sample9_fixed.bam.sorted.bam.narrowPeak

https://bioinformatics.stackexchange.com/questions/11394/how-to-visualize-called-narrowpeak-files-in-ucsc-genome-browser-or-igv



Authors
--------------------
	Alos Diallo - Department of Immunology, Harvard Medical School
  	
Copyright © 2018 the President and Fellows of Harvard College.

![Blavatnikimmunology](https://github.com/alosdiallo/HMS_Immunology_RNASeq/blob/master/Blavatnikimmunology.jpg)  
![Immgen](https://github.com/alosdiallo/HMS_Immunology_RNASeq/blob/master/immgen.png)  
![EVERGRANDE](https://github.com/alosdiallo/HMS_Immunology_RNASeq/blob/master/evergrande_logo_footer2.png)

### [MIT License](https://github.com/alosdiallo/HiC_Network_Viz_tool/blob/master/Licence.txt)
