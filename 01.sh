#! bin/bash

text="パタトクカシーー"
i=1
while [ $i -le 7 ]
do
    tmp_char=`echo $text | cut -c $i`
    result_text=$result_text$tmp_char
    i=`expr $i + 2`
done
echo $result_text
