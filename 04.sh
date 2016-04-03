#! bin/sh

text="Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."
# ,.を削除
text=`echo $text | sed -e 's/[,.]//g'`
# スペースをもとに分割する
words=($text)
# 文字列処理
i=1
for word in ${words[@]}; do
    if test $i -eq 1 -o $i -eq 5 -o $i -eq 6 -o $i -eq 7 -o $i -eq 8 -o $i -eq 9 -o $i -eq 15 -o $i -eq 16 -o $i -eq 19; then
        echo $word | awk '$0 = substr($0, 1, 1)'
    else
        echo $word | awk '$0 = substr($0, 1, 2)'
    fi
    i=`expr $i + 1`
done
