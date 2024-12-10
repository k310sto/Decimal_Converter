#!/bin/sh
# SPDX-FileCopyrightText: 2024 Kensuke Sato
# SPDX-License-Identifier: BSD-3-Clause

chmod +x decicon.py
mv decicon.py decicon
cd ~
if ! grep -q "export PATH+=:~/Decimal_Converter/" "./.bashrc"; then
	echo "export PATH+=:~/Decimal_Converter/" >> ~/.bashrc;
fi
