#!/usr/bin/python3
import sys

file = open(sys.argv[1], 'r')

num=int((sys.argv[2]))

lines = file.readlines()

Dic = {}

for line in lines:
    line = line.strip()
    words = line.split()
    for word in words:
        if (word in Dic):
            Dic[word] = Dic.pop(word) + 1
        else:
            Dic[word] = 1

Dic = sorted(Dic.items(), key=lambda x: x[1], reverse=True)
for n in range(0, num):
    word=Dic[n].keys()
    cnt=DIc[n].values()
    print("%-10s%10d" %word %count)
