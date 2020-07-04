#!/bin/bash -x

cat data.csv

cat data.csv | grep CAPTAIN

cat data.csv | grep CAPTAIN | awk '{sum +=$7}END{print sum}'
