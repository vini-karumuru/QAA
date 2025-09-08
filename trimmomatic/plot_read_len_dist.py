#!/usr/bin/env python

# import libraries
import argparse
import matplotlib.pyplot as plt

# set global variables to hold inputs
def get_args():
    parser = argparse.ArgumentParser(description="A script that takes in a FASTQ file and produces a plot of the per base quality score distribution.")
    parser.add_argument("-i1", help="input R1 read lengths count file name", required=True, type=str)
    parser.add_argument("-i2", help="input R2 read lengths count file name", required=True, type=str)
    parser.add_argument("-t", help="output plot title", required=True, type=str)
    parser.add_argument("-o", help="output plot file name", required=True, type=str)
    return parser.parse_args()
args = get_args()

# define a function that 
## takes in a file w/ 2 columns of numerical values (2nd column must be ordered numerically)
## returns each column as a list (of integers)
def parse_counts(filename):
    with open(filename, 'r') as fh:
        frequencies = []
        lengths = []
        for line in fh:
            line = line.strip("\n").strip(" ").split(" ")
            #print(line)
            frequencies.append(int(line[0]))
            lengths.append(int(line[1]))
    return (frequencies, lengths)

# get lists of lengths and frequencies for each read file
r1_frequencies, r1_lengths = parse_counts(args.i1)
r2_frequencies, r2_lengths = parse_counts(args.i2)

# plot distribution
plt.plot(r1_lengths, r1_frequencies, label = "R1")
plt.plot(r2_lengths, r2_frequencies, label = "R2")
plt.legend()
plt.xlabel("Read Length")
plt.ylabel("Frequency")
plt.title(args.t)
plt.savefig(args.o)

