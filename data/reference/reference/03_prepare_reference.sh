#!/bin/bash

# Prepare E. coli K-12 MG1655 reference genome

mkdir -p reference

# Download reference genome from NCBI
curl -L "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nuccore&id=NC_000913.3&rettype=fasta&retmode=text" \
    -o reference/NC_000913.3.fasta

# Create FASTA index
samtools faidx reference/NC_000913.3.fasta

# Create BWA index
bwa index reference/NC_000913.3.fasta
