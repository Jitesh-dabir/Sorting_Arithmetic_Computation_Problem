#!/bin/bash -x 

echo "..............................Welcome to Sorting Arithmetic Computation Problem.............................."

#DECLARE A DICTIONARY
declare -A resultStore

#VARIABLE
index=0
index1=0
length=0


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

#FIND LENGTH OF DICTIONARY AND STORE VALUES INTO ARRAY
length="${#resultStore[@]}"
for ((index1=0; $index1<$length; index1++))
do
	array[index1]=${resultStore[result $((index1+1))]}
done

#FUNCTION TO SORT ARRAY IN DESCENDING ORDER
function sortDescending()
{
   length1="${#array[@]}"
   for (( i=0; i<$length1; i++ ))
   do
      for (( j=0; j<$length1-1; j++ ))
      do
         if (( $(echo "${array[j]} < ${array[j+1]}" |bc -l) ))
         then
            temp=${array[j]}
            array[j]=${array[j+1]}
            array[j+1]=$temp
         fi
      done
   done
   echo "Sorted in descending:"${array[@]}
}


#FUNCTION TO SORT ARRAY IN ASCENDING ORDER
function sortAscending()
{
   length1="${#array[@]}"
   for (( i=0; i<$length1; i++ ))
   do
      for (( j=0; j<$length1-1; j++ ))
      do
         if (( $(echo "${array[j]} > ${array[j+1]}" |bc -l) ))
         then
            temp=${array[j]}
            array[j]=${array[j+1]}
            array[j+1]=$temp
         fi
      done
   done
   echo "Sorted in ascending:"${array[@]}
}

#FUNCTION CALL TO SORT ARRAY IN DESCENDING ORDER
sortDescending ${array[@]}

#FUNCTION CALL TO SORT ARRAY IN ASCENDING ORDER
sortAscending ${array[@]}
