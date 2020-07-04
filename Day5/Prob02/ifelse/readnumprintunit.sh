#!/bin/bash

read -p "Enter Number : " n

len=${#n}
#echo $len
for (( i=$len - 1; i>= 0; i-- ))
do
	rev=$rev${n:$i:1}
done
	echo $rev;
	num=$rev;

for (( i=1; i<=$len; i++ ))
do
        unit=$( echo $num | cut -c $i )

if [[ $i = 1 ]]
then
        echo "units : "$unit
elif [[ $i = 2 ]]
then
        echo "ten's : "$unit
elif [[ $i = 3 ]]
then
        echo "Hundereds :" $unit
elif [[ $i = 4 ]]
then
	echo "Thousands :" $unit
elif [[ $i = 5 ]]
then
	echo "Ten Thousands :" $unit
fi
done
