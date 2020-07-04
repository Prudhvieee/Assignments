#!/bin/bash -x

read -p "Enter Email-id :" name
pattern="(^[a-z\.]{3,}+)@([a-z\.]{2,})$"

if [[ $name =~ $pattern ]]
then
	echo valid;
else
	echo non-valid
fi
