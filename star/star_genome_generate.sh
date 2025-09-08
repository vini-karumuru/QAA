#!/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp                    
#SBATCH --cpus-per-task=8                
#SBATCH --mem=48GB
#SBATCH --time=3:00:00                        
#SBATCH --mail-user=vini@uoregon.edu     
#SBATCH --mail-type=ALL               
#SBATCH --job-name=star_genome_generate 
#SBATCH --output=stargg_%j.out       
#SBATCH --error=stargg_%j.err        

conda activate QAA

/usr/bin/time -v STAR \
--runThreadN 8 \
--runMode genomeGenerate \
--genomeDir campylomormyrus_db_STAR2.7.11b \
--genomeFastaFiles campylomormyrus.fasta \
--sjdbGTFfile campylomormyrus.gtf
