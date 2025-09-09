# Mycoplasma-assembly-pipeline
This repository contains a 𝐰𝐡𝐨𝐥𝐞 𝐠𝐞𝐧𝐨𝐦𝐞 𝐚𝐬𝐬𝐞𝐦𝐛𝐥𝐲 𝐩𝐢𝐩𝐞𝐥𝐢𝐧𝐞 implemented on Linux for analyzing 𝘔𝘺𝘤𝘰𝘱𝘭𝘢𝘴𝘮𝘢 𝘱𝘯𝘦𝘶𝘮𝘰𝘯𝘪𝘢𝘦 sequencing data using Illumina MiSeq reads.

# Project overview
1. **Objective:** Assemble and evaluate the whole genome of Mycoplasma pneumoniae from Illumina paired-end reads.
2. **Organism:** Mycoplasmoides pneumoniae (strain FH_USA_MA_2009)
3. **Study info:** Mycoplasma pneumoniae Whole Genome Sequencing and Assembly – PRJNA328823 (SRP078575)
4. **Sample ID:** SAMN05391692 (SRS1565347)
5. **Sequencing platform:** Illumina MiSeq
6. **Library type:** Long-insert shotgun, paired-end
7. **Input data:** SRA Run SRR3924617 (1.36M spots, ~393 Mb bases, 183 Mb download size)
8. **Output:** Genome assembly (FASTA) and assembly quality report (QUAST).

# Tools used:
1. SRA Toolkit (fasterq-dump): Convert .sra to FASTQ format
2. FastQC: Quality check of raw reads
3. Fastp: Adapter trimming & quality filtering
4. SPAdes: Genome assembly
5. QUAST: Assembly evaluation and quality assessment
6. Bash: Shell scripting automation

# Genome assembly workflow:
1. Data/         # Raw sequencing data (.sra, FASTQ)
2. Quality/      # FastQC results
3. Trimmed/      # fastp results
4. Assembly/     # SPAdes output (contigs, scaffolds, log files)
5. QUAST/        # QUAST report and assembly statistics
6. Script/       # Pipeline script for automation
7. Documents/    # Flowchart  

# Pipeline steps (Summary):
1. Download sequencing data (SRA)                                  
2. Convert SRA to FASTQ (fasterq-dump)
3. Perform quality check (FastQC)
4. Trim adapters & filter low-quality reads (Fastp)
5. Assemble genome (SPAdes)
6. Evaluate assembly statistics (QUAST)
7. Summarize results

# Results summary
Assembly statistics (QUAST report, contigs ≥500 bp):
**Metric value:**
1. Contigs (≥500 bp):	14
2. Contigs (total):	15
3. Largest contig:	324,076 bp
4. Total length:	799,172 bp
5. GC content: 39.78%
6. N50:	92,062 bp
7. N75:	62,710 bp
8. L50:	2
9. L75:	5
10. N’s per 100 kbp:	0.00

# Images and flowchart:
Key images and flowchart of this pipeline are available in the Document folder. 

# Key concepts
Bioinformatics | Genome Assembly | Illumina Sequencing | SPAdes | QUAST | NGS Pipelines | Shell Scripting | Data Analysis

# Contact
I’m a biotechnology student exploring bioinformatics pipelines for genomics research. Open to collaboration and feedback!

# License
The project is licensed under the MIT license (https://github.com/genome-miner/mycoplasma-assembly-pipeline/blob/main/LICENSE).

# Note
This project is for educational purposes. Data and reference information are obtained from NCBI SRA/GenBank and assembled using open-source tools.
