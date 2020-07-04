#!/bin/bash

read -p "Enter Number : " num

len=${#num}

for (( i=1; i<=$len; i++ ))
do
	digit=$( echo $num | cut -c $i )

if [[ $digit = 0 ]]
then
	echo zero
elif [[ $digit = 1 ]]
then
	echo one
elif [[ $digit = 2 ]]
then
        echo two
elif [[ $digit = 3 ]]
then
        echo three
elif [[ $digit = 4 ]]
then
        echo four
elif [[ $digit = 5 ]]
then
        echo five
elif [[ $digit = 6 ]]
then
        echo six
elif [[ $digit = 7 ]]
then
        echo seven
elif [[ $digit = 8 ]]
then
        echo eight
elif [[ $digit = 9 ]]
then
        echo nine
fi
done
