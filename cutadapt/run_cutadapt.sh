#!/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --cpus-per-task=8
#SBATCH --mem=64GB
#SBATCH --time=3:00:00
#SBATCH --mail-user=vini@uoregon.edu
#SBATCH --mail-type=ALL
#SBATCH --job-name=run_cutadapt
#SBATCH --output=run_cutadapt_%j.out
#SBATCH --error=run_cutadapt_%j.err

conda activate QAA

/usr/bin/time -v \
cutadapt \
-a  AGATCGGAAGAGCACACGTCTGAACTCCAGTCA \
-o SRR25630406_1_cutadapt.fastq.gz \
../input_fastq/SRR25630406_1.fastq.gz

/usr/bin/time -v \
cutadapt \
-a AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT \
-o SRR25630406_2_cutadapt.fastq.gz \
../input_fastq/SRR25630406_2.fastq.gz

/usr/bin/time -v \
cutadapt \
-a  AGATCGGAAGAGCACACGTCTGAACTCCAGTCA \
-o SRR25630407_1_cutadapt.fastq.gz \
../input_fastq/SRR25630407_1.fastq.gz

/usr/bin/time -v \
cutadapt \
-a  AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT \
-o SRR25630407_2_cutadapt.fastq.gz \
../input_fastq/SRR25630407_2.fastq.gz