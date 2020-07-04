#!/bin/bash
arr=();
read -p "Enter 1st number : " a
read -p "Enter 2nd number : " b
read -p "Enter 3rd number : " c
one=$(($a+$b*$c))
echo "a+b*c : "$one
	arr+=($one)
two=$(($a%$b+$c))
echo "a%b+c :"$two
	arr+=($two)
three=$(($c+$a/$c))
echo "c+a/b :"$three
	arr+=($three)
four=$(($a*$b+$c))
echo "a*b+c :"$four
	arr+=($four)

echo ${arr[@]}

minimum=${arr[0]}
maximum=${arr[0]}

for i in ${arr[@]}
do
	if [[ $i -gt $maximum ]]
	then
		maximum="$i"
	fi
	if [[ $i -lt $minimum ]]
	then
		minimum="$i"
	fi
done
echo "The maximum number is $maximum"
echo "The minimum number is $minimum"
