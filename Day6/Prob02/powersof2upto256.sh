#!/bin/bash
read -p "enter the number to generate table " n
i=1
while [ $i -le $n ]
do
    temp=$((2**$i))
    if [[ $temp -gt 256 ]]
    then
        break
    fi
    echo $temp
    ((i++))
done
