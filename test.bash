#/bin/bash
# SPDX-FileCopyrightText: 2024 Kensuke Sato
# SPDX-License-Identifier: BSD-3-Clause

res=0
sh install_decicon.sh
res=$?
[ "${res}" = 1 ] && echo "install error" && exit ${res}

res=$(echo 840 | ./decicon 50)
[ "$?" != 0 ] && echo "command error" && exit ${res}
[ "${res}" = Ge ] && echo "command error" && exit ${res}

res=$(echo Hello | ./decicon 16)
[ "$?" = 0 ] && echo "command error" && exit ${res}
[ "${res}" = "" ] && echo "command error" && exit ${res}

res=$(echo 10 | ./decicon abc)
[ "$?" = 0 ] && echo "command error" && exit ${res}
[ "${res}" = "" ] && echo "command error" && exit ${res}

bash uninstall_decicon.sh
res=$?
[ "${res}" = 1 ] && echo "uninstall error"

[ "${res}" = 0 ] && echo "all clear"
exit ${res}
