#!/bin/bash

read -p "Enter Number : " num

len=${#num}

for (( i=1; i<=$len; i++ ))
do
        digit=$( echo $num | cut -c $i )
case $digit in
 	0)echo zero;;
	1)echo one;;
	2)echo two;;
	3)echo three;;
	4)echo four;;
	5)echo five;;
	6)echo six;;
	7)echo seven;;
	8)echo eight;;
	9)echo nine;;
esac
done
