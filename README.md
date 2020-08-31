# RNA-seq Quality Assessment Assignment - Bi 623 (Summer 2020)

Be sure to upload all relevant materials by the deadline and **double check** to be sure that your off-line repository is up-to-date with your on-line repository. Answers to the questions can be submitted as ```html```, Github markdown, or ```pdf```.

## Objectives
The objectives of this assignment are to use existing tools for quality assessment and adaptor trimming, compare the quality assessments to those from your own software, and to demonstrate your ability to summarize other important information about this RNA-Seq data set.

### Data: 
Each of you will be working with 2 of the demultiplexed file pairs. For all steps below, process the two libraries separately. Library assignments are here: ```/projects/bgmp/shared/Bi624/PS1_file_assignments.tsv```

The demultiplexed, gzipped .fastq files are here: ```/projects/bgmp/shared/2019_Drosphila_RNAseq/```

### Part 1 – Read quality score distributions

1. Using ```FastQC``` on Talapas, produce plots of quality score distributions for forward and reverse reads. Also, produce plots of the per-base N content, and comment on whether or not they are consistent with the quality score plots.

2. Run your quality score plotting script from your Demultiplexing assignment from Bi 622. Describe how the ```FastQC``` quality score distribution plots compare to your own. If different, propose an explanation. Also, does the runtime differ? If so, why?

3. Comment on the overall data quality of your two libraries.

### Part 2 – Adaptor trimming comparison

4. Look into the adaptor trimming options for ```cutadapt``` and ```Trimmomatic``` (all on Talapas), and briefly describe the differences. Pick one of these programs to properly trim adapter sequences. Use default settings. What proportion of reads (both forward and reverse) was trimmed? 
    - *Sanity check*: Use your Unix skills to search for the adapter sequences in your datasets and confirm the expected sequence orientations. You may want to refer to Graded Assignment 4 from Bi623. Report the commands you used, the reasoning behind them, and how you confirmed the adapter sequences.
  
5. Plot the trimmed read length distributions for both forward and reverse reads (on the same plot). You can produce 2 different plots for your 2 different RNA-seq samples. There are a number of ways you could possibly do this. One useful thing your plot should show, for example, is whether R1s are trimmed more extensively than R2s, or vice versa. Comment on whether you expect R1s and R2s to be adapter-trimmed at different rates. 

### Part 3 – rRNA reads and strand-specificity
6. Find publicly available Drosophila melanogaster rRNA sequences and generate an alignment database (e.g. STAR) from them. Align the reads to your fly rRNA database (e.g. STAR) and report the proportion of reads that likely came from rRNAs. Think about what resources may be available for finding your fly rRNAs. We've talked about a few potential dbs over the summer. You might also check out Rfam.

7. Demonstrate convincingly whether or not the data are from “strand-specific” RNA-Seq libraries. There are a few possible strategies to address this problem, but you need only implement one. Briefly describe your evidence, using quantitative statements (e.g. "I propose that these data are/are not strand-specific, because X% of the reads are y, as opposed to z.").

**To turn in your work for this assignment**:
Please upload your Talapas batch script/code, FastQC plots, answers to questions, and any additional plots/code to github. You should create at most 2 files for submission (R markdown and the rendered pdf file) containing all these elements. The three parts of the assignment should be clearly labeled. Be sure to title and write a figure legend for each image/graph/table you present.
