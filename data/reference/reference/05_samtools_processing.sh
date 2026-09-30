#!/bin/bash

# SAMtools processing and alignment statistics

mkdir -p results/alignment

# Index the sorted BAM file
samtools index \
    results/alignment/SRR13086342.sorted.bam

# Generate alignment statistics
samtools flagstat \
    results/alignment/SRR13086342.sorted.bam \
    > results/alignment/SRR13086342.flagstat.txt

# Generate detailed alignment statistics
samtools stats \
    results/alignment/SRR13086342.sorted.bam \
    > results/alignment/SRR13086342.stats.txt

# Generate genome coverage summary
samtools coverage \
    results/alignment/SRR13086342.sorted.bam \
    > results/alignment/SRR13086342.coverage.txt
