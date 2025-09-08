#!/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --cpus-per-task=8
#SBATCH --mem=64GB
#SBATCH --time=3:00:00
#SBATCH --mail-user=vini@uoregon.edu
#SBATCH --mail-type=ALL
#SBATCH --job-name=run_trimmomatic
#SBATCH --output=run_trimmomatic_%j.out
#SBATCH --error=run_trimmomatic_%j.err

conda activate QAA

/usr/bin/time -v \
trimmomatic PE \
-threads 8 \
../cutadapt/SRR25630406_1_cutadapt.fastq.gz \
../cutadapt/SRR25630406_2_cutadapt.fastq.gz \
SRR25630406_1_trimmo_paired.fq.gz \
SRR25630406_1_trimmo_unpaired.fq.gz \
SRR25630406_2_trimmo_paired.fq.gz \
SRR25630406_2_trimmo_unpaired.fq.gz \
HEADCROP:8 \
LEADING:3 \
TRAILING:3 \
SLIDINGWINDOW:5:15 \
MINLEN:35


/usr/bin/time -v \
trimmomatic PE \
-threads 8 \
../cutadapt/SRR25630407_1_cutadapt.fastq.gz \
../cutadapt/SRR25630407_2_cutadapt.fastq.gz \
SRR25630407_1_trimmo_paired.fq.gz \
SRR25630407_1_trimmo_unpaired.fq.gz \
SRR25630407_2_trimmo_paired.fq.gz \
SRR25630407_2_trimmo_unpaired.fq.gz \
HEADCROP:8 \
LEADING:3 \
TRAILING:3 \
SLIDINGWINDOW:5:15 \
MINLEN:35
