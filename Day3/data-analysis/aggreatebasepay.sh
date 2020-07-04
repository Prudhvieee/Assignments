#!/bin/bash -x

cat data.csv | awk '{print $4}'

average=$(awk '{ total += $4 } END { print total/NR ,"TotalBasePay",total,"No of Records",NR }' data.csv)
