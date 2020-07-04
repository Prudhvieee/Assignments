#!/bin/bash -x

read -p "Enter last name :" name
pattern="(^[A-Z]{1}+)[a-z]{2}$"

if [[ $name =~ $pattern ]]
then
	echo valid;
else
	echo non-valid
fi
