#!/bin/bash
read -p "Enter number : " n
arr=();
m=2;
for ((i=1; $i<=$n; i++))
do
	P=$(($m**$i))
        arr+=($P)
done
for a in ${arr[@]}
do
	echo $a
done
