#!/bin/bash

#Note: This program only works for numbers in range 0 to 100

result=()
i=0
while [[ $i -lt 101 ]];do

	num=$i;
	((i++));

	arr=()	#array to store the individual digits from the number
	x=$num

	#To get the digits individually from the number
	while [[ $x -gt 0 ]];do
		rem=$(( $x%10 ));
		x=$(( $x/10 ));
		arr+=($rem);
	done

	#To chech if any of the digits in the number are repeating
	if [[ ${#arr[@]} -eq 2 ]];then
		if [[ ${arr[0]} -eq ${arr[1]} ]];then
			result+=($num)
		fi
	elif [[ ${#arr[@]} -eq 3 ]];then
		if [[ ${arr[0]} -eq ${arr[1]} || ${arr[1]} -eq ${arr[2]} || ${arr[0]} -eq ${arr[2]} ]];then
			result+=($num)
		fi
	fi
done

echo "Numbers ranging from 0 to 100 that have repeating digits are: ${result[@]}"
