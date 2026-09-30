#!/bin/bash

# SnpEff annotation of filtered E. coli variants
# Reference: E. coli K-12 MG1655 (NC_000913.3)

mkdir -p results/annotation

# Download the SnpEff database if it is not already installed
snpEff download Escherichia_coli_str_k_12_substr_mg1655

# Annotate filtered variants
snpEff \
    -v \
    -stats results/annotation/SRR13086342.snpeff_summary.html \
    Escherichia_coli_str_k_12_substr_mg1655 \
    results/variants/filtered/SRR13086342.filtered.vcf.gz \
    > results/annotation/SRR13086342.ann.vcf
