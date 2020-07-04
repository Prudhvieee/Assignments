#!/bin/bash -x
read -p "Enter Number : " n

len=${#n}
#echo $len
for (( i=$len - 1; i>= 0; i-- ))
do
        rev=$rev${n:$i:1}
done
        echo $rev;
        num=$rev;

if [[ $n -eq $num ]]
then
	echo "given number is palindrome"
else
	echo "Given number is not palindrome"
fi
