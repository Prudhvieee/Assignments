#!/bin/bash

read -p "Enter Number : " num

len=${#num}

for (( i=1; i<=$len; i++ ))
do
        digit=$( echo $num | cut -c $i )
case $digit in
        1)echo sunday;;
        2)echo monday;;
        3)echo tuesday;;
        4)echo wednesday;;
        5)echo thursday;;
        6)echo friday;;
        7)echo saturday;;
        *)echo no more daYS THAN 7 IN A WEEK;;
esac
done
