#! bin/sh

# $1=文字列
# $2=n
ngram() {
    words=($1)
    i=1
    # 単語の個数をiに格納
    for word in ${words[@]}; do
        i=`expr $i + 1`
    done
    n=$i
    while [ $i -ne $2 ]; do
        j=0
        tmp=""
        while [ $j -lt $2 ]; do
            tmp=$tmp${words[`expr $n - $i + $j `]}
            j=`expr $j + 1`
        done
        echo $tmp
        i=`expr $i - 1`
    done    
}

ngram "I am an NLPer" 2
