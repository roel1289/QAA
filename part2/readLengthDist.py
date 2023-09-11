#!/usr/bin/env python

import argparse
import numpy

def get_args():
    parser = argparse.ArgumentParser(description="A program to hold input + output file name")
    parser.add_argument("-R1", "--filename", help="Specify the input filename.", type = str)
    parser.add_argument("-R2", "--filename2", help="Specify the input filename.", type = str)    
    parser.add_argument("-o", "--output", help="Specify output filename.", type = str)
    return parser.parse_args()

args = get_args()

#read in data
with open(args.filename, "r" ) as file1:


#####READ1
#dict to store values: key = read length, value = count:
    readLenDict1 = dict()
    count1:list = []
    readLend1:list = []

    while True:
        line = file1.readline().split()
        if(line == []):
            break
        count1 = int(line[0])
        readLen1 = int(line[1])

        #print(line)

        if readLen1 not in readLenDict1:
            readLenDict1[readLen1] = count1

        else:
            continue

    #print(readLenDict)
    xAxis1 = list(readLenDict1.keys())
    yAxis1 = list(readLenDict1.values())


    print(len(xAxis1))
    print(len(yAxis1))

   #####READ2
#dict to store values: key = read length, value = count:
with open(args.filename2, "r") as file2:
    readLenDict2 = dict()
    count2:list = []
    readLend2:list = []

    while True:
        line = file2.readline().split()
        if(line == []):
            break
        count2 = int(line[0])
        readLen2 = int(line[1])

        #print(line)

        if readLen2 not in readLenDict2:
            readLenDict2[readLen2] = count2

        else:
            continue

    #print(readLenDict)
    xAxis2 = list(readLenDict2.keys())
    yAxis2 = list(readLenDict2.values())

#plot data
import matplotlib.pyplot as plt

plt.bar(xAxis1, yAxis1, log=True, color = "red", width = .6, alpha = 0.5, label= "Forward Read")
plt.bar(xAxis2, yAxis2, log=True, alpha = 0.5, label = "Reverse Read")
plt.xlabel('Read Length (bp)')
plt.ylabel('Count')
# plt.xlim([0,101])
# plt.ylim([0,6706450])
plt.legend(loc="upper left")

plt.title('24_4A_control_S18_L008 Read Length Distribution')
plt.savefig(args.output)


#./readLengthDist.py -R1 readLenDist15_3C_mbnl_S11_L008_R1.txt -R2 readLenDist15_3C_mbnl_S11_L008_R2.txt -o 15_3C_mbnl_S11_L008ReadLenDist.png