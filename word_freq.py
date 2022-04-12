#!/usr/bin/python3
import sys

file = open(sys.argv[1], 'r')

while True:
    line = file.readlines()
    if not line: break
    print(line)


