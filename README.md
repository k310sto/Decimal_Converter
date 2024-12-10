# Decimal Converter
10進数をn進数へ変換します。
## インストール
```
cd ~
git clone https://github.com/k310sto/Decimal_Converter.git
cd Decimal_Converter
sh install_decicon
source ~/.bashrc
```
## アンインストール
```
cd ~/Decimal_Converter
sh uninstall_decicon.sh
cd ~
rm -rf Decimal_Converter
```
## 機能・使用例
数値を入力すると、2進数に変換された数値が出力されます。
```
echo 10 | decicon
1010
```
引数に指定することで、2進数以外の数値も出力できます。
```
echo 123 | decicon 16
7B
```
## 必須ソフトウェア
- Python3
## テスト環境
- Ubnutu 22.04.5 LTS
- Microsoft Windows Server 2022 10.0.20348 Datacenter
- macOS 14.7.1 23H222
## ライセンス
このスクリプトは、3条項BSDライセンスの下、再頒布および使用が許可されます。<br>
© 2024 Kensuke Sato
