#!/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp                    
#SBATCH --cpus-per-task=8                
#SBATCH --mem=48GB 
#SBATCH --time=3:00:00                       
#SBATCH --mail-user=vini@uoregon.edu     
#SBATCH --mail-type=ALL               
#SBATCH --job-name=star_alignment 
#SBATCH --output=star_align_%j.out       
#SBATCH --error=star_align_%j.err 

conda activate QAA

/usr/bin/time -v STAR \
--runThreadN 8 \
--runMode alignReads \
--outFilterMultimapNmax 3 \
--outSAMunmapped Within KeepPairs \
--alignIntronMax 1000000 --alignMatesGapMax 1000000 \
--readFilesCommand zcat \
--readFilesIn ../trimmomatic/SRR25630406_1_trimmo_paired.fq.gz ../trimmomatic/SRR25630406_2_trimmo_paired.fq.gz \
--genomeDir campylomormyrus_db_STAR2.7.11b \
--outFileNamePrefix SRR25630406

/usr/bin/time -v STAR \
--runThreadN 8 \
--runMode alignReads \
--outFilterMultimapNmax 3 \
--outSAMunmapped Within KeepPairs \
--alignIntronMax 1000000 --alignMatesGapMax 1000000 \
--readFilesCommand zcat \
--readFilesIn ../trimmomatic/SRR25630407_1_trimmo_paired.fq.gz ../trimmomatic/SRR25630407_2_trimmo_paired.fq.gz \
--genomeDir campylomormyrus_db_STAR2.7.11b \
--outFileNamePrefix SRR25630407