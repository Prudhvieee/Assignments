#!/bin/bash
head=0;
tail=0;
for ((i=0;i<11;i++))
do
        if [[ $(($RANDOM%2)) = 1 ]]
        then
                echo Head
		((head++))
	else
                echo Tail
		((tail++))
        fi
done
echo "Head counts :"$head
echo "tail counts : "$tail
