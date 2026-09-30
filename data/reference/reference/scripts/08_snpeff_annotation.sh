#!/bin/bash

# SnpEff annotation of filtered E. coli variants
# Reference: E. coli K-12 MG1655 (NC_000913.3)

mkdir -p results/annotation

# Annotate filtered variants
snpEff \
    -v \
    Escherichia_coli_K12 \
    results/variants/filtered/SRR13086342.filtered.vcf.gz \
    > results/annotation/SRR13086342.ann.vcf
