#!/bin/bash -x
echo Welcome to airthmetic computation and sorting.

#Take the user inputs.
read -p "Enter the first number: " firstNumber
read -p "Enter the second number: " secondNumber
read -p "Enter the third number: " thirdNumber
#Operations being performed.
result1=$((firstNumber+secondNumber*thirdNumber))
	echo "$firstNumber + $secondNumber * $thirdNumber = $result1"
result2=$((firstNumber*secondNumber+thirdNumber))
	echo "$firstNumber * $secondNumber + $thirdNumber = $result2"
result3=$((thirdNumber+firstNumber/secondNumber))
	echo "$thirdNumber * $firstNumber / $secondNumber = $result3"
result4=$((firstNumber%secondNumber+thirdNumber))
	echo "$firstNumber % $secondNumber + $thirdNumber = $result4"
#Declaring Dictionary and displaying it.
declare -A result
	result[computation1]=$result1
	result[computation2]=$result2
	result[computation3]=$result3
	result[computation4]=$result4
echo ${result[@]}
#Declaring and displaying array.
for (( index=0; index<${#result[@]}; index++ ))
do
	Array[index]=${result[computation$((index+1))]}
done
echo ${Array[@]}
#Sorting in decending order and displaying it.
for (( index1=0; index1<${#Array[@]}; index1++ ))
do
	for (( index2=index1+1; index2<${#Array[@]}; index2++ ))
	do
		if (( ${Array[index1]} < ${Array[index2]} ))
		then
			temporary=${Array[index1]}
			Array[index1]=${Array[index2]}
			Array[index2]=$temporary
		fi
	done
done
echo "Array in Decending order will be like: ${Array[@]}"
