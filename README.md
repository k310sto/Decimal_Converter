# Decimal Converter
[![test](https://github.com/k310sto/Decimal_Converter/actions/workflows/test.yml/badge.svg)](https://github.com/k310sto/Decimal_Converter/actions/workflows/test.yml)
[![](https://img.shields.io/github/license/k310sto/Sudoku_Solver)](https://github.com/k310sto/Decimal_Converter/blob/main/LICENSE)
<br>
10進数をn進数へ変換します。
## インストール
```
git clone https://github.com/k310sto/Decimal_Converter.git
cd Decimal_Converter
chmod +x decicon
sudo mv decicon /usr/local/bin/
```
## 機能・使用例
数値を入力すると、2進数に変換された数値が出力されます。
```
echo 10 | decicon
1010
```
引数に指定することで、2進数以外の数値も出力できます。<br>
また、10以上の数値はアルファベットで表されます。<br>
(大文字→小文字の順で大きくなり、最大62進数まで表現可能)
```
echo 123 | decicon 16
7B
```
## 必須ソフトウェア
- Python（テスト済：**3.0〜3.12**）
## テスト環境
- Ubnutu 22.04.5 LTS
- macOS 14.7.1 23H222
## ライセンス
このスクリプトは、3条項BSDライセンスの下、再頒布および使用が許可されます。<br>
© 2024 Kensuke Sato
