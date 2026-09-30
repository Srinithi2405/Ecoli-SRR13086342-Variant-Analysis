#!/bin/bash

# Quality control and read trimming of raw paired-end sequencing reads

mkdir -p results/qc/raw
mkdir -p results/qc/trimmed
mkdir -p data/trimmed

# Quality control before trimming
fastqc \
    data/raw/SRR13086342_1.fastq \
    data/raw/SRR13086342_2.fastq \
    -o results/qc/raw

# Adapter and quality trimming
fastp \
    -i data/raw/SRR13086342_1.fastq \
    -I data/raw/SRR13086342_2.fastq \
    -o data/trimmed/SRR13086342_1.trimmed.fastq.gz \
    -O data/trimmed/SRR13086342_2.trimmed.fastq.gz \
    -h results/qc/trimmed/SRR13086342.fastp.html \
    -j results/qc/trimmed/SRR13086342.fastp.json
