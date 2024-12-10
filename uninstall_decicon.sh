#!/bin/sh
# SPDX-FileCopyrightText: 2024 Kensuke Sato
# SPDX-License-Identifier: BSD-3-Clause

cd ~
if grep -q "export PATH+=:~/Decimal_Converter/decicon" "./.bashrc"; then
	sed -i -e "s@export PATH+=:~/Decimal_Converter/decicon@@g" ~/.bashrc;
fi
