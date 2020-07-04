#!/bin/bash -x

cat data.csv | awk '{ if (($5 >= 7000 ) && ($5 <= 10000)) {print}}' 
