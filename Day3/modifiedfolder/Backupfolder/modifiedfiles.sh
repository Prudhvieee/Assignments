#!/bin/bash -x

for i in `find . -type f -mmin -20`

do
	mv $i Backupfolder/
done
