#!/bin/bash
gen() # this generates the prime numbers
{
    x[0]=2
    for ((i=2;i<=$1;i++))
    do
        status=0
        for j in ${x[@]}
        do
            if [[ $(($i%$j)) == 0 ]]
            then
                status=1
                break
            fi
        done
        if [[ $status == 0 ]]
        then
            x[${#x[@]}]=$i
        fi
    done
    echo ${x[@]}
}

read -p "enter the range " n
temp=$(gen $n)
echo ${temp[@]}
