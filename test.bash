#/bin/bash
# SPDX-FileCopyrightText: 2024 Kensuke Sato
# SPDX-License-Identifier: BSD-3-Clause

chmod +x decicon

res=0
res=$(echo 840 | ./decicon 50)
[ "$?" != 0 ] && echo "command error" && exit 1
[ "${res}" != Ge ] && echo "command error" && exit 1

res=$(echo 999 | ./decicon 63)
[ "$?" != 1 ] && echo "command error" && exit 1
[ "${res}" != "" ] && echo "command error" && exit 1

res=$(echo 999 | ./decicon 1)
[ "$?" != 1 ] && echo "command error" && exit 1
[ "${res}" != "" ] && echo "command error" && exit 1

res=$(echo Hello | ./decicon 16)
[ "$?" != 1 ] && echo "command error" && exit 1
[ "${res}" != "" ] && echo "command error" && exit 1

res=$(echo 10 | ./decicon abc)
[ "$?" != 1 ] && echo "command error" && exit 1
[ "${res}" != "" ] && echo "command error" && exit 1

exit 0
