#!/usr/bin/python3

# SPDX-FileCopyrightText: 2024 Kensuke Sato　　　　
# SPDX-License-Identifier: BSD-3-Clause

import sys

if(len(sys.argv)==1):
    n = 2
if(len(sys.argv)==2):
    if not(str(sys.argv[1]).isdigit()):
        sys.exit("Error: Invalid argument")
    else:
        if(int(sys.argv[1])<0 and 100<int(sys.argv[1])):
            sys.exit("Error: Argument out of range")
        else:
            n = int(sys.argv[1])

stdin = sys.stdin.readline()
rem = []
quo = int(stdin)
i = 0
while quo != 0: 
    r = quo % n
    if r < 10:
        rem.insert(i, str(r))
    else:
        rem.insert(i, chr(r+55))
    quo = quo // n
    i += 1
rem.reverse()
ans = ''.join(map(str, rem))
print(ans)
