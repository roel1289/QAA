#!/bin/bash
#SBATCH --account=bgmp                    #REQUIRED: which account to use
#SBATCH --partition=compute               #REQUIRED: which partition to use
#SBATCH --mail-user=roel@uoregon.edu     #optional: if you'd like email
#SBATCH --mail-type=ALL                   #optional: must set email first, what type of email you want
#SBATCH --cpus-per-task=8                 #optional: number of cpus, default is 1
#SBATCH --mem=32GB                        #optional: amount of memory, default is 4GB 

#stranded=yes
/usr/bin/time -v htseq-count 15_3C_mbnl_S11_L008Aligned.out.sam Mus_musculus.GRCm39.110.gtf --stranded=yes > 15_3C_mbnl_S11_L008Aligned_yes.out.tsv

/usr/bin/time -v htseq-count 24_4A_control_S18Aligned.out.sam Mus_musculus.GRCm39.110.gtf --stranded=yes

#stranded=reverse
/usr/bin/time -v htseq-count 15_3C_mbnl_S11_L008Aligned.out.sam Mus_musculus.GRCm39.110.gtf --stranded=reverse

/usr/bin/time -v htseq-count 24_4A_control_S18Aligned.out.sam Mus_musculus.GRCm39.110.gtf --stranded=reverse