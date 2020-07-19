#!/bin/bash

arr=();	#declaring an empty array

for (( i=0; i<10; i++ ))	#loop for 10 variables
do
	x=$((RANDOM%900 + 100));	#Generate 3 digit random numbers from 100 to 999
	arr+=($x);	#store each variable in the array
done

echo $"Array of 10 Random 3 digit numbers: ${arr[@]}"	#print the contents of the array
#echo "${!arr[@]}"	#print the index values of the contents of the array
#echo "${#arr[@]}"	#print the lenght if the array


#Test array for using the max and min 16 bit int values arr=(170 504 282 386 730 641 898 538 574 421)

#declaring 2 variables largest & second largest with the 16bit int minimun values
#For signed integers the range is -32768 to 32767

largest=-32768;
secondLargest=-32768;

for (( i=0; i<${#arr[@]}; i++ ))
do
	if [[ ${arr[i]} -ge $largest ]];then
		secondLargest=$largest;
		largest=${arr[i]};
	fi

	if [[ ${arr[i]} -ne $largest && ${arr[i]} -gt $secondLargest ]];then
		secondLargest=${arr[i]};
	fi
done

echo $"Largest value in the array is: $largest"
echo $"Second Largest value in the array is: $secondLargest"

#declaring 2 variables smallest & second smallest with the 16bit int maximun values
#For signed integers the range is -32768 to 32767

smallest=32767;
secondSmallest=32767;

for (( i=0; i<${#arr[@]}; i++ ))
do
	if [[ ${arr[i]} -le $smallest ]];then
		secondSmallest=$smallest;
		smallest=${arr[i]};
	fi

	if [[ ${arr[i]} -ne $smallest && ${arr[i]} -lt $secondSmallest ]];then
		secondSmallest=${arr[i]};
	fi
done

echo $"Smallest value in the array is: $smallest"
echo $"Second Smallest value in the array is: $secondSmallest"
