#!/bin/bash
echo "think of a number betweeen 1 to 100"
start=1
end=100
while [ $start -lt $end ]
do
    mid=$(((($start+$end))/2))
    echo $mid
    echo "enter l if less and g if greater "
    read input
    case "$input" in
        l)  end=$mid;;
        g)  start=$(($mid+1));;
        *) default
    esac
done

echo "your number is " $start
