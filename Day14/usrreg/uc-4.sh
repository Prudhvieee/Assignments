#!/bin/bash -x

read -p "Enter Email-id :" name
pattern="(^[1-9]{2}+)\s([0-9]{10})$"

if [[ $name =~ $pattern ]]
then
	echo valid;
else
	echo non-valid
fi
