#!/bin/bash

read -p "Enter Number : " num

len=${#num}

for (( i=1; i<=$len; i++ ))
do
        day=$( echo $num | cut -c $i )

if [[ $day = 1 ]]
then
        echo sunday
elif [[ $day = 2 ]]
then
        echo monday
elif [[ $day = 3 ]]
then
        echo tuesday
elif [[ $day = 4 ]]
then
        echo wednesday
elif [[ $day = 5 ]]
then
        echo thursday
elif [[ $day = 6 ]]
then
        echo friday
elif [[ $day = 7 ]]
then
        echo saturday
else
        echo there are no more days than seven in a week
fi
done
