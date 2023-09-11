#!/bin/bash
#SBATCH --account=bgmp                    #REQUIRED: which account to use
#SBATCH --partition=compute               #REQUIRED: which partition to use
#SBATCH --mail-user=roel@uoregon.edu     #optional: if you'd like email
#SBATCH --mail-type=ALL                   #optional: must set email first, what type of email you want
#SBATCH --cpus-per-task=8                 #optional: number of cpus, default is 1
#SBATCH --mem=32GB                        #optional: amount of memory, default is 4GB

conda activate bgmp_star

/usr/bin/time -v STAR --runThreadN 8 \
 --runMode genomeGenerate \
 --genomeDir /projects/bgmp/roel/bioinfo/Bi623/QAA/part3/Mus_musculus.GRCm39.ens110.STAR_2.7.10b \
 --genomeFastaFiles /projects/bgmp/roel/bioinfo/Bi623/QAA/part3/Mus_musculus.GRCm39.dna.primary_assembly.fa \
 --sjdbGTFfile /projects/bgmp/roel/bioinfo/Bi623/QAA/part3/Mus_musculus.GRCm39.110.gtf








