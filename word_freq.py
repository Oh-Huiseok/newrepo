#!/usr/bin/python3
import sys

file = open(sys.argv[1], 'r')

lines = file.readlines()
Dic = {}
for line in lines:
    line = line.strip()
    words = line.split()
    for word in words:
        print(word)
        if (word in Dic):
            Dic[word] = Dic.pop(word) + 1
        else:
            Dic[word] = 1

print(Dic)

