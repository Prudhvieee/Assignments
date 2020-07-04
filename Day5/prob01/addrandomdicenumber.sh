#!/bin/bash

arr=();

for ((i=1; i<=2; i++))
do
	num=$(($RANDOM%6 + 1))
	echo "$i number : "$num
	arr+=($num)
done
for i in ${arr[@]}
do
    sum=`expr $sum + $i`
done

echo "sum of numbers : "$sum
