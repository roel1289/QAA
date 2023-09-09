#!/usr/bin/env python

import argparse

def get_args():
    parser = argparse.ArgumentParser(description="A program to hold input + output file name")
    parser.add_argument("-f", "--filename", help="Specify the input filename.", type = str)
    parser.add_argument("-o", "--output", help="Specify output filename.", type = str)
    return parser.parse_args()

args = get_args()

#read in data
with open(args.filename, "r" ) as file:

#dict to store values: key = read length, value = count:
    readLenDict = dict()
    count:list = []
    readLend:list = []

    while True:
        line = file.readline().split()
        if(line == []):
            break
        count = line[0]
        readLen = line[1]

        #print(line)

        if readLen not in readLenDict:
            readLenDict[readLen] = count
        else:
            continue

    print(readLenDict)

        
#         #print(position)



#plot data
import matplotlib.pyplot as plt

plt.bar(readLenDict.keys(), readLenDict.values())
plt.xlabel('Read Length')
plt.ylabel('Count')
plt.title('Read Length Distribution')
plt.savefig(args.output)




#./readLengthDist.py -f readLenDist.txt -o EX.png