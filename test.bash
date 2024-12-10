#!/bin/bash
# SPDX-FileCopyrightText: 2024 Kensuke Sato
# SPDX-License-Identifier: BSD-3-Clause

res=0
sh install_decicon.sh
res=$?
[ "${res}" = 1 ] && echo "install error" && exit ${res}

echo 840 | ./decicon.py 50
res=$?
[ "${res}" = Ge ] && echo "command error" && exit ${res}

bash uninstall_bash.sh
res=$?
[ "${res}" = 1 ] && echo "uninstall error"

[ "${res}" = 0 ] && echo "all clear"
exit ${res}
