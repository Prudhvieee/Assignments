#!/bin/bash

read -p  "enter inches :" inch

echo Converting inches to feet

Feet=$(echo "scale=2;$inch*1/12" | bc)

echo $Feet ft

echo CONVERTING FEET TO METER

read -p "enter feet :" ft

meter=$(echo "scale=2;$ft/3.281" | bc)

echo $meter mtr

echo converting feet to inch

read -p "enter feet :" feet

in=$(echo "scale=2;$feet*12" | bc)

echo $in inch

echo converting meter to feet

read -p "enter meter :" mtr

ft=$(echo "scale=4;$mtr*3.281" | bc)

echo $ft ft

