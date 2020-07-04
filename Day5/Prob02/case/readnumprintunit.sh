#!/bin/bash

read -p "Enter Number : " n

len=${#n}
for (( i=$len - 1; i>= 0; i-- ))
do
        rev=$rev${n:$i:1}
done
#        echo $rev;
        num=$rev;

for (( i=1; i<=$len; i++ ))
do
        digit=$( echo $num | cut -c $i )
case $i in
        1)echo "units :" $digit;;
        2)echo "ten's :" $digit;;
        3)echo "hundered's :" $digit;;
        4)echo "Thousand's :" $digit;;
        5)echo "Ten Thousand's :" $digit;;
esac
done

