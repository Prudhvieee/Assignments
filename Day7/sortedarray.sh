#!/bin/bash

arr=();	#declaring an empty array

for (( i=0; i<10; i++ ))	#loop for 10 variables
do
	x=$((RANDOM%900 + 100));	#Generate 3 digit random numbers from 100 to 999
	arr+=($x);	#store each variable in the array
done

echo $"Array of 10 Random 3 digit numbers: ${arr[@]}"	#print the contents of the array
#echo "${!arr[@]}"	#print the index values of the contents of the array

#sorting program
IFS=$'\n' sorted=($(sort <<<"${arr[*]}")); unset IFS

echo "Sorted Array: ${sorted[@]}"

echo $"Largest value in the array is: ${sorted[-1]}"
echo $"Second Largest value in the array is: ${sorted[-2]}"

echo $"Smallest value in the array is: ${sorted[0]}"
echo $"Second Smallest value in the array is: ${sorted[1]}"
