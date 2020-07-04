#!/bin/bash

for (( i=0; i<=10; i++ ))
do
	echo $(($RANDOM%9))
done
