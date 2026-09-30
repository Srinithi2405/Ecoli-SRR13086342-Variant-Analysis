#!/usr/bin/env python3

"""
Extract missense variants from a SnpEff-annotated VCF file.

Input:
    SnpEff annotated VCF

Output:
    Tab-separated table of missense variants
"""

import re

input_vcf = "results/annotation/SRR13086342.ann.vcf"
output_file = "results/annotation/SRR13086342.missense_variants.tsv"


def parse_ann(annotation):
    """Parse the SnpEff ANN field."""
    fields = annotation.split("|")

    return {
        "allele": fields[0],
        "effect": fields[1],
        "impact": fields[2],
        "gene": fields[3],
        "gene_id": fields[4],
        "feature": fields[5],
        "feature_id": fields[6],
        "transcript_biotype": fields[7],
        "rank": fields[8],
        "hgvs_c": fields[9],
        "hgvs_p": fields[10],
    }


with open(input_vcf, "r") as vcf, open(output_file, "w") as out:

    out.write(
        "CHROM\tPOS\tREF\tALT\tQUAL\t"
        "EFFECT\tIMPACT\tGENE\tGENE_ID\t"
        "HGVS_C\tHGVS_P\n"
    )

    for line in vcf:

        if line.startswith("#"):
            continue

        columns = line.rstrip().split("\t")

        chrom = columns[0]
        pos = columns[1]
        ref = columns[3]
        alt = columns[4]
        qual = columns[5]
        info = columns[7]

        match = re.search(r"ANN=([^;]+)", info)

        if not match:
            continue

        annotations = match.group(1).split(",")

        for annotation in annotations:

            ann = parse_ann(annotation)

            if "missense_variant" in ann["effect"]:

                out.write(
                    f"{chrom}\t"
                    f"{pos}\t"
                    f"{ref}\t"
                    f"{alt}\t"
                    f"{qual}\t"
                    f"{ann['effect']}\t"
                    f"{ann['impact']}\t"
                    f"{ann['gene']}\t"
                    f"{ann['gene_id']}\t"
                    f"{ann['hgvs_c']}\t"
                    f"{ann['hgvs_p']}\n"
                )

print("Missense variant extraction completed.")
print(f"Output: {output_file}")
