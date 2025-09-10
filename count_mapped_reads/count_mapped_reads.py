#!/usr/bin/env python

import argparse

def get_args():
    parser = argparse.ArgumentParser(description="A script that takes in a FASTQ file and produces a plot of the per base quality score distribution.")
    parser.add_argument("-i", help="input SAM filename", required=True, type=str)
    return parser.parse_args()
args = get_args()

with open (args.i, 'r') as fh:
    mapped = 0
    unmapped = 0
    for line in fh:
        line = line.strip("\n")
        if line[0] != "@":
            split_line = line.split("\t")
            flag = int(split_line[1])
            # if not secondary alignment
            if((flag & 256) != 256):
                # if not unmapped
                if((flag & 4) != 4):
                    mapped += 1
                else:
                    unmapped += 1

print(f"Number of mapped reads: {mapped}")
print(f"Number of unmapped reads: {unmapped}")
