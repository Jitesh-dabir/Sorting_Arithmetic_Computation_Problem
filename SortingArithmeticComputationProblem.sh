#!/bin/bash -x

echo "..............................Welcome to Sorting Arithmetic Computation Problem.............................."

#TAKING INPUT FROM USER
read -p "Enter first input :" firstInput
read -p "Enter second input:" secondInput
read -p "Enter third input :" thirdInput

#COMPUTE ARITHMETIC FIRST COMPUTATION
result=`echo "$firstInput + $secondInput * $thirdInput" | bc`
echo "Result:" $result
