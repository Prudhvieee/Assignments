#!/bin/bash -x

DATE=$(date +"%d-%m-%y")

for file in `ls *.log.1`;
do
	fileName=`echo $file | awk -F. '{print $1}'`;
	echo $fileName
	extensionName=`echo $file | awk -F. '{print $2$3}'`;
	echo $extensionName
	newFileName="${fileName}-${DATE}.log"
	echo $newFileName
	mv $file $newFileName
done

