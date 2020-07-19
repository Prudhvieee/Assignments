#!/bin/bash

n=$1
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
