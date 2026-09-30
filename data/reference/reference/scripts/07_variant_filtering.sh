#!/bin/bash

# Filter raw variants based on quality and depth

mkdir -p results/variants/filtered

bcftools filter \
    -i 'QUAL>=30 && DP>=10' \
    results/variants/SRR13086342.raw.vcf.gz \
    -Oz \
    -o results/variants/filtered/SRR13086342.filtered.vcf.gz

bcftools index \
    results/variants/filtered/SRR13086342.filtered.vcf.gz

# Generate a readable filtered VCF
bcftools view \
    results/variants/filtered/SRR13086342.filtered.vcf.gz \
    > results/variants/filtered/SRR13086342.filtered.vcf
