#!/bin/bash
read -p "Enter mail id :" name
pattern="^([a-z0-9A-Z\.\+\*\-]+)@([a-z0-9A-Z\.\-]+)\.([a-zA-Z]{2,})$"
if [[ $name =~ $pattern ]]
then
	echo valid
else
	echo invalid
fi

