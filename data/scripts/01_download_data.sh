#!/bin/bash

# Download sequencing data from NCBI SRA

prefetch SRR13086342

# Convert SRA file to paired-end FASTQ files

fasterq-dump SRR13086342 \
    --split-files \
    -e 4 \
    -O data/raw
