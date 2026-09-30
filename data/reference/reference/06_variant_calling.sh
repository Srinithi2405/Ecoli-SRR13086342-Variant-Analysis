#!/bin/bash

# Variant calling using BCFtools

mkdir -p results/variants

# Create BCFtools pileup and call variants
bcftools mpileup \
    -f reference/NC_000913.3.fasta \
    -Ou \
    results/alignment/SRR13086342.sorted.bam \
| bcftools call \
    -mv \
    -Oz \
    -o results/variants/SRR13086342.raw.vcf.gz

# Index the VCF
bcftools index \
    results/variants/SRR13086342.raw.vcf.gz

# Create a readable VCF
bcftools view \
    results/variants/SRR13086342.raw.vcf.gz \
    > results/variants/SRR13086342.raw.vcf
