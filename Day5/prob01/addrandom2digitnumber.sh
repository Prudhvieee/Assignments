#!/bin/bash

arr=();

for ((i=1; i<=5; i++))
do
        num=$(($RANDOM%90+10))
        echo "$i number : "$num
        arr+=($num)
done
for i in ${arr[@]}
do
    sum=`expr $sum + $i`
done
echo $sum
echo "Average of numbers : " `expr "scale=2;$sum/${#arr[@]}" | bc`

