#!/bin/bash

for ((i=0;i>=0;i++))
do
	if [[ $(($RANDOM%2)) = 1 ]]
	then
		echo Head
	else
		echo Tail
	fi
done
