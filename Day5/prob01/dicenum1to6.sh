#!/bin/bash

for ((i=1; i<=10; i++))
do
	echo $(($RANDOM%6 + 1))
done
