#! bin/sh

text1="パトカー"
text2="タクシー"
i=1
while test $i -lt 5; do
    tmp1=`echo $text1 | cut -c $i`
    tmp2=`echo $text2 | cut -c $i`
    result=$result$tmp1$tmp2
    i=`expr $i + 1`
done
echo $result
