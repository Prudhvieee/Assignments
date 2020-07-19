#!/bin/bash

function ctf {
	local a=$(echo "scale=2; $1" | bc -l)
	local b=$(echo "scale=2; $a* 9/5 + 32 " | bc -l)
	echo "$a° Celcius is $b° Farenheit"
}

function ftc {
	local a=$(echo "scale=2; $1" | bc -l)
	local b=$(echo "scale=2; ($a-32) * 5/9 " | bc -l)
	echo "$a° Farenheit is $b° Celsius"
}
echo -e "1. Celcuis to Farenheit\n2. Farenheit to Celcius\n"
read -p "Enter option number: " input

case $input in
	1)
		read -p "Enter Temperature in Clecius: " in1
		#Edited Code to take Floating point numbers
			if [[ $(echo "$in1 >= 0" | bc -l) && $(echo "$in1 <= 100" | bc -l) ]];then
				ctf $in1
			else
				echo "Error: Enter a valid input between 0°C to 100°C"
			fi
	;;
	2)
		read -p "Enter Temperature in Farenheit: " in1
		#Edited Code to take Floating piont numbers
		if [[ $(echo "$in1 >= 32" | bc -l) && $(echo "$in1 <= 212" | bc -l) ]];then
			ftc $in1
		else
			echo "Error: Enter a valid input between 32°F to 212°F"
		fi
	;;
	*)echo "Error: Invalid Input";;
esac
