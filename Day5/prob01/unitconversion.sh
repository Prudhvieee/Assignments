#!/bin/bash -x


read -p  "enter inches :" inch

#Converting inches to feet

Feet=$(echo "scale=2;$inch*1/12" | bc)

echo $Feet ft

#converting plot into meters

meters=$(echo "scale=2;60*40/(10.764)" | bc)

echo "one plot = " $meters mtrs

#we have 25 plots

plots=$(echo "scale=2;$meters*25" | bc)

echo $plots mtrs

#converting plots in meters to acres

acres=$(echo "scale=2;$plots/4047" | bc)
