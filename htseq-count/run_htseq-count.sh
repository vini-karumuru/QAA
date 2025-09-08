#!/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp                    
#SBATCH --cpus-per-task=8                
#SBATCH --mem=48GB 
#SBATCH --time=3:00:00                       
#SBATCH --mail-user=vini@uoregon.edu     
#SBATCH --mail-type=ALL  
#SBATCH --job-name=run_htseq-count
#SBATCH --output=run_htseq-count_%j.out
#SBATCH --error=run_htseq-count_%j.err

conda activate QAA

/usr/bin/time -v htseq-count \
-f sam \
-s yes \
../picard/dedup_sorted_SRR25630406Aligned.out.sam \
../star/campylomormyrus.gtf \
> SRR25630406_gene_counts_s.txt

/usr/bin/time -v htseq-count \
-f sam \
-s reverse \
../picard/dedup_sorted_SRR25630406Aligned.out.sam \
../star/campylomormyrus.gtf \
> SRR25630406_gene_counts_rs.txt

/usr/bin/time -v htseq-count \
-f sam \
-s yes \
../picard/dedup_sorted_SRR25630407Aligned.out.sam \
../star/campylomormyrus.gtf \
> SRR25630407_gene_counts_s.txt

/usr/bin/time -v htseq-count \
-f sam \
-s reverse \
../picard/dedup_sorted_SRR25630407Aligned.out.sam \
../star/campylomormyrus.gtf \
> SRR25630407_gene_counts_rs.txt