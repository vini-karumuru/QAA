#!/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp                    
#SBATCH --cpus-per-task=8                
#SBATCH --mem=48GB 
#SBATCH --time=3:00:00                       
#SBATCH --mail-user=vini@uoregon.edu     
#SBATCH --mail-type=ALL               
#SBATCH --job-name=picard_rg 
#SBATCH --output=picard_rg_%j.out       
#SBATCH --error=picarc_rg_%j.err 

conda activate QAA

/usr/bin/time -v picard AddOrReplaceReadGroups \
 I=../star/sorted_SRR25630406Aligned.out.bam \
 O=rg_sorted_SRR25630406Aligned.out.bam \
 RGID=4 \
 RGLB=lib1 \
 RGPL=ILLUMINA \
 RGPU=unit1 \
 RGSM=SRR25630406 \
 VALIDATION_STRINGENCY=LENIENT

 /usr/bin/time -v picard AddOrReplaceReadGroups \
 I=../star/sorted_SRR25630407Aligned.out.bam \
 O=rg_sorted_SRR25630407Aligned.out.bam \
 RGID=4 \
 RGLB=lib1 \
 RGPL=ILLUMINA \
 RGPU=unit1 \
 RGSM=SRR25630407 \
 VALIDATION_STRINGENCY=LENIENT

