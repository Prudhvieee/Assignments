#!/bin/bash
arr=();
read -p "Enter number : " n

for ((i=1; $i<=$n; i++))
do
	H=1/$i+
	arr+=($H)
done
echo ${arr[@]}
