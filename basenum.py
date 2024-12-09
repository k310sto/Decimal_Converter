#!/usr/bin/python3
# SPDX-FileCopyrightText: 2024 Kensuke Sato　　　　
# SPDX-License-Identifier: BSD-3-Clause

import sys

n = 16

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
