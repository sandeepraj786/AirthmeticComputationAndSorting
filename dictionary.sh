#!/bin/bash -x
echo Welcome to airthmetic computation and sorting.

#Take the user inputs.
read -p "Enter the first number: " firstNumber
read -p "Enter the second number: " secondNumber
read -p "Enter the third number: " thirdNumber

result1=$((firstNumber+secondNumber*thirdNumber))
	echo "$firstNumber + $secondNumber * $thirdNumber = $result1"
result2=$((firstNumber*secondNumber+thirdNumber))
	echo "$firstNumber * $secondNumber + $thirdNumber = $result2"
result3=$((thirdNumber+firstNumber/secondNumber))
	echo "$thirdNumber * $firstNumber / $secondNumber = $result3"
result4=$((firstNumber%secondNumber+thirdNumber))
	echo "$firstNumber % $secondNumber + $thirdNumber = $result4"

declare -A result
	result[computation1]=$result1
	result[computation2]=$result2
	result[computation3]=$result3
	result[computation4]=$result4

echo ${result[@]}
