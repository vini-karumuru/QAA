#!/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --cpus-per-task=8
#SBATCH --mem=64GB
#SBATCH --time=3:00:00
#SBATCH --mail-user=vini@uoregon.edu
#SBATCH --mail-type=ALL
#SBATCH --job-name=plot_qs_dist
#SBATCH --output=plot_qs_dist_%j.out
#SBATCH --error=plot_qs_dist_%j.err

/usr/bin/time -v \
./plot_quality_distribution.py \
-i ../input_fastq/SRR25630406_1.fastq.gz \
-o SRR25630406_1_qs_dist.png

/usr/bin/time -v \
./plot_quality_distribution.py \
-i ../input_fastq/SRR25630406_2.fastq.gz \
-o SRR25630406_2_qs_dist.png

/usr/bin/time -v \
./plot_quality_distribution.py \
-i ../input_fastq/SRR25630407_1.fastq.gz \
-o SRR25630407_1_qs_dist.png

/usr/bin/time -v \
./plot_quality_distribution.py \
-i ../input_fastq/SRR25630407_2.fastq.gz \
-o SRR25630407_2_qs_dist.png