# Whole-Genome Variant Analysis of Colistin-Resistant Escherichia coli

## Project Overview

This project performs whole-genome sequencing analysis of a
colistin-resistant Escherichia coli isolate using publicly available
Illumina sequencing data.

The main objective is to identify genomic variants, with particular
focus on protein-altering missense variants, and functionally annotate
the affected genes.

## Dataset

- Organism: Escherichia coli
- SRA accession: SRR13086342
- Sequencing platform: Illumina MiSeq
- Library strategy: Whole Genome Sequencing (WGS)
- Library layout: Paired-end
- Library source: Genomic
- Read count: 260,680
- Base count: 135,950,960

## Workflow

FASTQ
↓
FastQC
↓
fastp
↓
BWA
↓
SAMtools
↓
BCFtools
↓
Variant filtering
↓
SnpEff
↓
Missense variant identification
↓
Functional annotation
↓
Biological interpretation

## Tools

- FastQC
- fastp
- BWA
- SAMtools
- BCFtools
- SnpEff
- Linux/Bash
- Python/R

## Data Availability

Raw sequencing data are publicly available through the
NCBI Sequence Read Archive under accession SRR13086342.

## Project Status

In progress.

## Note

This project is an independent computational analysis of publicly
available sequencing data. Identification of a genomic variant does
not by itself establish that the variant causes colistin resistance.
