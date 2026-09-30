# E. coli K-12 Whole-Genome Variant Analysis

## Project Overview

This project presents a whole-genome sequencing (WGS) variant analysis of *Escherichia coli* K-12 MG1655.

The analysis was performed using publicly available sequencing data and the reference genome NC_000913.3. The workflow covers sequencing quality control, read processing, genome alignment, variant calling, variant annotation, and downstream missense variant analysis.

## Reference Genome

- Organism: *Escherichia coli* K-12 MG1655
- Reference accession: NC_000913.3
- Assembly: GCF_000005845.2
- Sequencing data: NCBI SRA

## Analysis Workflow

FASTQ
→ Quality Control
→ Read Trimming
→ BWA Alignment
→ SAM/BAM Processing
→ Variant Calling
→ Variant Filtering
→ SnpEff Annotation
→ Missense Variant Analysis
→ Amino-Acid Property Analysis

## Tools Used

- FastQC
- fastp
- BWA
- SAMtools
- BCFtools
- VCFtools
- SnpEff
- Linux/Bash

## Key Results

* 314 genomic variants were identified: 287 SNPs, 4 insertions, and 23 deletions.
* Missense variants were identified across multiple genes representing variants predicted to cause amino-acid substitutions.
* 12 genes contained two distinct missense variants each:ydjH, recE, nth, narH, lsrF, lpxT, lhr, glsA, flhA, fhuE, ffh, and atoB.
* The remaining genes in the missense dataset contained one identified missense variant each.
* 26 variants were classified by SnpEff as HIGH impact, mainly based on predicted frameshift and stop-gained effects.
* These functional-impact classifications are computational annotations and do not confirm experimental biological effects.


## Missense Variant Analysis

The missense variants were examined according to:

- Reference and alternate alleles
- Gene
- cDNA change
- Protein change
- Genotype
- Original and substituted amino-acid properties

The amino-acid property analysis groups residues into nonpolar, polar, acidic, basic, and aromatic categories.

These classifications describe biochemical changes and should not be interpreted as experimental evidence of functional damage.

## Repository Contents

Key result files include:

- `missense_with_properties.tsv` — combined missense variant and amino-acid property analysis
- `missense_variants_clean.tsv` — cleaned missense variant table
- `gene_missense_summary.tsv` — missense variant counts by gene
- `missense_gene_list.txt` — list of genes containing missense variants
- `amino_acid_property_changes.tsv` — amino-acid property transitions
- `variant_quality_table.txt` — variant quality information
- `snpEff_genes.txt` — SnpEff gene-level annotation
- `snpEff_summary.html` — SnpEff annotation summary

## Reproducibility

Large raw sequencing files, alignment files, and intermediate files are excluded from this repository using `.gitignore`.

The repository focuses on the analysis results and documentation required to understand the project.

## Author

Srinithi Chinnasamy  
M.Sc. Integrated Biotechnology
