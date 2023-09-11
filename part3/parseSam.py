#!/usr/bin/env python

import argparse

def get_args():
	parser = argparse.ArgumentParser(description="A program to hold input file name")
	parser.add_argument("-f", "--filename", help="Specify the input filename.", type = str)	
	return parser.parse_args()

args = get_args()
file = args.filename

#file = "/projects/bgmp/roel/bioinfo/Bi621/PS/ps8-roel1289/PS8_Aligned.out.sam"
#file = "/projects/bgmp/roel/bioinfo/Bi621/PS/ps8-roel1289/TESTFILE.sam"
with open(file, "r") as samFile:
#initialize variables
    mappedReads:int = 0
    unmappedReads:int = 0
    bflagList:list = []
#go through samFile and focus on non-header lines and the second column
    for line in samFile:
        if line.startswith("@"):
            pass
        else:
            #focus on second column
            bflagList = line.split('\t')[1]
            flag = int(bflagList)

            #don't want a secondar alignment so don't want 256 true
            if((flag & 256) == 256):
                pass

            #Now determine if it's mapped or unmapped and print
            elif((flag & 4) != 4):
                mappedReads += 1
            else:
                unmappedReads += 1
    print(f'Mapped reads: {mappedReads}')
    print(f'Unmapped reads: {unmappedReads}')

    
