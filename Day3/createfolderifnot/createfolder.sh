#!/bin/bash -x

NewFolder=temp

for file in 'ls -d */'
do
	echo folderName is $file
	if [ -d "$file == $NewFolder/" ]
	then
		echo "Directory exists"
	else
		mkdir $NewFolder
		echo "folder created"
	fi
done
