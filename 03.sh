#! bin/sh

text="Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."
# ,.を削除
text=`echo $text | sed -e 's/[,.]//g'`
# スペースをもとに分割する
words=($text)
# 文字のカウント
for word in ${words[@]}; do
    result=$result`expr $word : '.*'`
done
echo $result
