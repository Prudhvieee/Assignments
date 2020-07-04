#!/bin/bash
read -p "Enter number :" num
function primeNum {
	for((i=2; i<=$num/2; i++))
	do
	         if [ $(($num%$i)) -eq 0 ]
        	then
	                echo "$num is not a prime number."
        	exit
        	fi
	done
	echo "$num is a prime number."
}
function palindromeNum {
len=${#num}
	for (( i=$len - 1; i>= 0; i-- ))
	do
        	rev=$rev${num:$i:1}
	done
        	echo $rev;
	        numb=$rev;
	if [[ $num -eq $numb ]]
	then
        	echo "given number is palindrome"
	else
        	echo "Given number is not palindrome"
	fi
}
primeNum $num 
palindromeNum $num
