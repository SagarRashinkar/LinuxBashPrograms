# Prob 1) Sorting Arithmetic Computation Problem
# Arithmetic Computation & Sorting
# This problem computes different arithmetic expressions
# and Sorts the results
# i) Write program to take three inputs – a, b & c
# Compute a + b * c
# Compute a * b + c
# Compute c + a / b
# Compute a % b + c
# ii) Store the results in a Dictionary for every Computation
# iii) Read the values from the Dictionary into the array
# iii) Sort the results to show the Computation Result in the Descending Order
# iv) Sort the results to show the Computation Value in Ascending Order

#!/bin/bash
read -p "enter value of a:" a
read -p "enter value of b:" b
read -p "enter value of c:" c

# performing operation

result1=$(( a+b*c ))
result2=$(( a*b+c ))
result3=$(( c+a/b ))
result4=$(( a%b+c ))

# storing elements in dictionary

declare -A dict

dict[1]=$result1
dict[2]=$result2
dict[3]=$result3
dict[4]=$result4

echo "elements in dictionary is: " ${dict[@]}

# inserting dictionary data to array

myArray=(${dict[@]})
echo "elements in Array is: " ${myArray[@]}

for (( i=0;i<${#myArray[@]};i++ ))
do
	for (( j=$i;j<${#myArray[@]};j++ ))
	do
		if [[ ${myArray[$i]} -gt ${myArray[$j]} ]]
		then
			temp=${myArray[$i]}
			myArray[$i]=${myArray[$j]}
			myArray[$j]=$temp
		fi
	done
done
echo "Ascending order: " ${myArray[@]}

for (( i=0;i<${#myArray[@]};i++ ))
do
	for (( j=$i;j<${#myArray[@]};j++ ))
	do
		if [[ ${myArray[$i]} -lt ${myArray[$j]} ]]
		then
			temp=${myArray[$i]}
			myArray[$i]=${myArray[$j]}
			myArray[$j]=$temp
		fi
	done
done
echo "Discending order: " ${myArray[@]}
