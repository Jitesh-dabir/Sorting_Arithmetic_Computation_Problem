#!/bin/bash -x

echo "..............................Welcome to Sorting Arithmetic Computation Problem.............................."

#DECLARE A DICTIONARY
declare -A resultStore

#VARIABLE
index=0

#TAKING INPUT FROM USER
read -p "Enter first input :" firstInput
read -p "Enter second input:" secondInput
read -p "Enter third input :" thirdInput

#COMPUTE ARITHMETIC FIRST COMPUTATION
firstResult=`echo "$firstInput + $secondInput * $thirdInput" | bc`
echo "First result:" $firstResult

#COMPUTE ARITHMETIC SECOND COMPUTATION
secondResult=`echo "$firstInput * $secondInput + $thirdInput" | bc`
echo "Second result:" $secondResult

#COMPUTE ARITHMETIC THIRD COMPUTATION
thirdResult=`echo "scale=2; $thirdInput + $firstInput / $secondInput" | bc`
echo "Third result:" $thirdResult

#COMPUTE ARITHMETIC FOURTH COMPUTATION
fourthResult=`echo "scale=2; $firstInput % $secondInput + $thirdInput" | bc`
echo "Fourth result:" $fourthResult

#STORE EACH COMPUTATION RESULT INTO DICTIONARY
resultStore[result $((++index))]=$firstResult
resultStore[result $((++index))]=$secondResult
resultStore[result $((++index))]=$thirdResult
resultStore[result $((++index))]=$fourthResult
