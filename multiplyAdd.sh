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
