#!/bin/bash

declare -A diceArray
One=0
Two=0
Three=0
Four=0
Five=0
Six=0

while : 
do
  diceRoll=$((RANDOM%6 + 1 ))

  if [[ $diceRoll -eq 1 ]];then
    ((One++))
    diceArray[One]=$One
    if [[ $One -eq 10 ]];then
      echo "One has rolled 10 Times"
      break
    fi
  elif [[ $diceRoll -eq 2 ]];then
    ((Two++))
    diceArray[Two]=$Two
    if [[ $Two -eq 10 ]];then
    echo "Two has rolled 10 Times"
      break
    fi
  elif [[ $diceRoll -eq 3 ]];then
    ((Three++))
    diceArray[Three]=$Three
    if [[ $Three -eq 10 ]];then
    echo "Three has rolled 10 Times"
      break
    fi
  elif [[ $diceRoll -eq 4 ]];then
    ((Four++))
    diceArray[Four]=$Four
    if [[ $Four -eq 10 ]];then
    echo "Four has rolled 10 Times"
      break
    fi
  elif [[ $diceRoll -eq 5 ]];then
    ((Five++))
    diceArray[Five]=$Five
    if [[ $Five -eq 10 ]];then
    echo "Five has rolled 10 Times"
      break
    fi
  elif [[ $diceRoll -eq 6 ]];then
    ((Six++))
    diceArray[Six]=$Six
    if [[ $Six -eq 10 ]];then
    echo "Six has rolled 10 Times"
      break
    fi
  fi
done

min=10000

for j in "${!diceArray[@]}";do
  if [[ ${diceArray[$j]} -le $min ]];then
    min=${diceArray[$j]}
    key=$j
  # else
  #   min=${diceArray[$j]}
  #   key=$j
  fi
done

#echo "min=$min"
echo "$key has rolled $min times as the minimum number of rolls "
