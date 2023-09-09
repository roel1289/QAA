#!/bin/bash
#SBATCH --account=bgmp                    #REQUIRED: which account to use
#SBATCH --partition=compute               #REQUIRED: which partition to use
#SBATCH --mail-user=roel@uoregon.edu     #optional: if you'd like email
#SBATCH --mail-type=ALL                   #optional: must set email first, what type of email you want
#SBATCH --cpus-per-task=8                 #optional: number of cpus, default is 1
#SBATCH --mem=32GB                        #optional: amount of memory, default is 4GB

#note: uncomment whichever sample I am doing

###for 15_3C_mbnl_S11_L008 samples:
# input1=/projects/bgmp/roel/bioinfo/Bi623/QAA/part2/15_3C_mbnl_S11_L008_R1_001.cut.fastq
# input2=/projects/bgmp/roel/bioinfo/Bi623/QAA/part2/15_3C_mbnl_S11_L008_R2_001.cut.fastq
# pairedOut1=/projects/bgmp/roel/bioinfo/Bi623/QAA/part2/trimmed/15_3C_mbnl_S11_L008_R1_001.cut.trimmed.fastq
# unpairedOut1=/projects/bgmp/roel/bioinfo/Bi623/QAA/part2/trimmed/DELETED_15_3C_mbnl_S11_L008_R1_001.cut.trimmed.fastq
# pairedOut2=/projects/bgmp/roel/bioinfo/Bi623/QAA/part2/trimmed/15_3C_mbnl_S11_L008_R2_001.cut.trimmed.fastq
# unpairedOut2=/projects/bgmp/roel/bioinfo/Bi623/QAA/part2/trimmed/DELETED_15_3C_mbnl_S11_L008_R2_001.cut.trimmed.fastq

###for 24_4A_control_S18_L008 samples:
input1=/projects/bgmp/roel/bioinfo/Bi623/QAA/part2/24_4A_control_S18_L008_R1_001.cut.fastq
input2=/projects/bgmp/roel/bioinfo/Bi623/QAA/part2/24_4A_control_S18_L008_R2_001.cut.fastq
pairedOut1=/projects/bgmp/roel/bioinfo/Bi623/QAA/part2/trimmed/24_4A_control_S18_L008_R1_001.cut.trimmed.fastq
unpairedOut1=/projects/bgmp/roel/bioinfo/Bi623/QAA/part2/trimmed/DELETED_24_4A_control_S18_L008_R1_001.cut.trimmed.fastq
pairedOut2=/projects/bgmp/roel/bioinfo/Bi623/QAA/part2/trimmed/24_4A_control_S18_L008_R2_001.cut.trimmed.fastq
unpairedOut2=/projects/bgmp/roel/bioinfo/Bi623/QAA/part2/trimmed/DELETED_24_4A_control_S18_L008_R2_001.cut.trimmed.fastq



/usr/bin/time -v trimmomatic PE -phred33 $input1 $input2 $pairedOut1 $unpairedOut1 $pairedOut2 $unpairedOut2 LEADING:3 TRAILING:3 SLIDINGWINDOW:5:15 MINLEN:35