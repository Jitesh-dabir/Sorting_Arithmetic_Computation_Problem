#!/bin/bash -x

echo "..............................Welcome to Sorting Arithmetic Computation Problem.............................."

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
