#!/bin/bash

arr=();
for ((i=1; i<=5; i++))
do
	num=$(($RANDOM%900+100))
	arr+=($num)
done

echo $"Random Generated numbers are : ${arr[@]}"

max=${arr[0]}
min=${arr[0]}

for i in ${arr[@]}
do
     if [[ $i -gt $max ]]
     then
        max="$i"
     fi

     if [[ $i -lt $min ]]
     then
        min="$i"
     fi
done

echo "The maximum number is $max"
echo "The minimum number is $min"
