#!/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp                    
#SBATCH --cpus-per-task=8                
#SBATCH --mem=48GB 
#SBATCH --time=3:00:00                       
#SBATCH --mail-user=vini@uoregon.edu     
#SBATCH --mail-type=ALL               
#SBATCH --job-name=run_picard 
#SBATCH --output=run_picard_%j.out       
#SBATCH --error=run_picard_%j.err 

conda activate QAA

/usr/bin/time -v picard MarkDuplicates \
INPUT=rg_sorted_SRR25630406Aligned.out.bam \
OUTPUT=dedup_sorted_SRR25630406Aligned.out.sam \
METRICS_FILE=SRR25630406.metrics \
REMOVE_DUPLICATES=TRUE \
VALIDATION_STRINGENCY=LENIENT

/usr/bin/time -v picard MarkDuplicates \
INPUT=rg_sorted_SRR25630407Aligned.out.bam \
OUTPUT=dedup_sorted_SRR25630407Aligned.out.sam \
METRICS_FILE=SRR25630407.metrics \
REMOVE_DUPLICATES=TRUE \
VALIDATION_STRINGENCY=LENIENT