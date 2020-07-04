#!/bin/bash
declare -A dice
for((j=0;j<=100;j++))
do
	random=$(($RANDOM%6+1))
#	echo  $random
#	dice[0++]="$random"
#	echo ${dice[@]}
	if [[ ${dice[$random]}]] == null ]]
	then
	     dice[$random]=0
	else
	    dice[$random]=$((dice[$random]+1))
	fi
done
echo ${dice[@]}

for i in ${!dice[@]}
do
	if [[ ${dice[$i]} -eq 10 ]]
	then
		echo "Found" $i
	else
		echo "Not Found" $i
	fi
done
