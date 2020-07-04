#!/bin/bash
echo minimum 8 characters required
echo should have atleast one uppercase
read -p "Enter password :" pwd
#minimum 8 characters required.

if [[ $pwd == *[0-9]*  && $pwd == *[A-Z]* && $pwd == *[a-z]* && $pwd == *[\.\*\@\-]* ]]
then
	echo Password Accepted
else
	echo invalid Password
fi
