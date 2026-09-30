#!/bin/bash

# Align trimmed paired-end E. coli WGS reads
# Reference: E. coli K-12 MG1655 (NC_000913.3)

mkdir -p results/alignment

bwa mem \
    -t 4 \
    reference/NC_000913.3.fasta \
    data/trimmed/SRR13086342_1.trimmed.fastq.gz \
    data/trimmed/SRR13086342_2.trimmed.fastq.gz \
    > results/alignment/SRR13086342.sam

samtools view \
    -b \
    results/alignment/SRR13086342.sam \
    -o results/alignment/SRR13086342.bam

samtools sort \
    results/alignment/SRR13086342.bam \
    -o results/alignment/SRR13086342.sorted.bam

samtools index \
    results/alignment/SRR13086342.sorted.bam

samtools flagstat \
    results/alignment/SRR13086342.sorted.bam \
    > results/alignment/SRR13086342.flagstat.txt
