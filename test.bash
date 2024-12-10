#/bin/bash
# SPDX-FileCopyrightText: 2024 Kensuke Sato
# SPDX-License-Identifier: BSD-3-Clause

res=0
sh install_decicon.sh
res=$?
[ "${res}" = 1 ] && echo "install error" && exit 1

res=$(echo 840 | ./decicon 50)
[ "$?" != 0 ] && echo "command error" && exit 1
[ "${res}" != Ge ] && echo "command error" && exit 1

res=$(echo 999 | ./decicon 63)
[ "$?" = 0 ] && echo "command error" && exit 1
[ "${res}" != "" ] && echo "command error" && exit 1

res=$(echo 999 | ./decicon 1)
[ "$?" = 0 ] && echo "command error" && exit 1
[ "${res}" != "" ] && echo "command error" && exit 1

res=$(echo Hello | ./decicon 16)
[ "$?" = 0 ] && echo "command error" && exit 1
[ "${res}" != "" ] && echo "command error" && exit 1

res=$(echo 10 | ./decicon abc)
[ "$?" = 0 ] && echo "command error" && exit 1
[ "${res}" != "" ] && echo "command error" && exit 1



bash uninstall_decicon.sh
res=$?
[ "${res}" = 1 ] && echo "uninstall error"

[ "${res}" = 0 ] && echo "all clear"
exit ${res}
