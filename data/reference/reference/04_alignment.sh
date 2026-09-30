#!/bin/bash

# Align paired-end E. coli WGS reads to the NC_000913.3 reference

mkdir -p results/alignment

bwa mem \
    -t 4 \
    reference/NC_000913.3.fasta \
    data/raw/SRR13086342_1.fastq \
    data/raw/SRR13086342_2.fastq \
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
