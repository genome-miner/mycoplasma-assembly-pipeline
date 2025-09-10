# Downloading SRA data
wget https://sra-pub-run-odp.s3.amazonaws.com/sra/SRR3924617/SRR3924617

# Extracting Paired-End FASTQ Files from NCBI SRA using fastq-dump
fastq-dump --split-files SRR3924617

# Checking FASTQ files quality
fastqc SRR3924617_1.fastq SRR3924617_2.fastq

# Making quality better by using fastp tool
fastp -i SRR3924617_1.fastq -I SRR3924617_2.fastq -o SRR3924617_1.trimmed.fastq -O SRR3924617_2.trimmed.fastq -h report.html -j report.json

# Genome assembly by using SPADES tool
spades.py --careful -1 SRR3924617_1.trimmed.fastq -2 SRR3924617_2.trimmed.fastq -o spades_output

# Visualization of garphs
Bandage # This will open the Bandage tool (GUI), where you can load graph files and analyze the genome.

# Checking quality of assembled genome
quast.py scaffolds.fasta -o quast_output 
