#!/bin/bash
#SBATCH --account=bgmp                    #REQUIRED: which account to use
#SBATCH --partition=compute               #REQUIRED: which partition to use
#SBATCH --mail-user=roel@uoregon.edu     #optional: if you'd like email
#SBATCH --mail-type=ALL                   #optional: must set email first, what type of email you want
#SBATCH --cpus-per-task=8                 #optional: number of cpus, default is 1
#SBATCH --mem=32GB                        #optional: amount of memory, default is 4GB

#if not on bgmp-QAA, uncomment following command:
#conda activate bgmp_star

# /usr/bin/time -v STAR --runThreadN 8 --runMode alignReads \
# --outFilterMultimapNmax 3 \
# --outSAMunmapped Within KeepPairs \
# --alignIntronMax 1000000 --alignMatesGapMax 1000000 \
# --readFilesCommand zcat \
# --readFilesIn /projects/bgmp/roel/bioinfo/Bi623/QAA/part2/trimmed/15_3C_mbnl_S11_L008_R1_001.cut.trimmed.fastq.gz /projects/bgmp/roel/bioinfo/Bi623/QAA/part2/trimmed/15_3C_mbnl_S11_L008_R2_001.cut.trimmed.fastq.gz \
# --genomeDir /projects/bgmp/roel/bioinfo/Bi623/QAA/part3/Mus_musculus.GRCm39.ens110.STAR_2.7.10b \
# --outFileNamePrefix 15_3C_mbnl_S11_L008


/usr/bin/time -v STAR --runThreadN 8 --runMode alignReads \
--outFilterMultimapNmax 3 \
--outSAMunmapped Within KeepPairs \
--alignIntronMax 1000000 --alignMatesGapMax 1000000 \
--readFilesCommand zcat \
--readFilesIn /projects/bgmp/roel/bioinfo/Bi623/QAA/part2/trimmed/24_4A_control_S18_L008_R1_001.cut.trimmed.fastq.gz /projects/bgmp/roel/bioinfo/Bi623/QAA/part2/trimmed/24_4A_control_S18_L008_R2_001.cut.trimmed.fastq.gz \
--genomeDir /projects/bgmp/roel/bioinfo/Bi623/QAA/part3/Mus_musculus.GRCm39.ens110.STAR_2.7.10b \
--outFileNamePrefix 24_4A_control_S18