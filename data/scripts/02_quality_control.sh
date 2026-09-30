#!/bin/bash

# Quality control of raw paired-end sequencing reads

mkdir -p results/qc/raw

fastqc \
    data/raw/SRR13086342_1.fastq \
    data/raw/SRR13086342_2.fastq \
    -o results/qc/raw
