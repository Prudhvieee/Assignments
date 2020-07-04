#!/bin/bash -x
echo minimum 8 characters required
read -p "Enter password :" pwd
#minimum 8 characters required.
pattern="^[a-zA-Z0-9\@\#\$\&\.\-]{8,}$"

if [[ $pwd =~ $pattern ]]
then
	echo Password Accepted
else
	echo Password invalid
fi
