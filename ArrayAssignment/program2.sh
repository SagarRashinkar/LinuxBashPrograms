#!/bin/bash

#declare -A myArray
for i in {0..9}
do
	randomValue=$((RANDOM%1000))
	myArray[i]=$randomValue
done

echo ${myArray[@]};

large=${myArray[1]};
small=${myArray[1]};

#sorting the array

for (( i=0; i<${#myArray[@]}; i++ ))
do
	for (( j=$i; j<${#myArray[@]}; j++ ))
	do
		if [[ ${myArray[$i]} -gt ${myArray[$j]} ]]
		then
			temp=${myArray[$i]}
			myArray[$i]=${myArray[$j]}
			myArray[$j]=$temp
		fi
	done
done

echo "Array after sorting: "
echo ${myArray[@]}

# finding the smallest and largest element.
for element in ${myArray[@]}
do
	if [[ $element -gt $large ]]
	then
		large=$element;
	fi
	if [[ $element -lt $small ]]
	then
		small=$element;
	fi
done

echo "largest element is: " $large;
echo "smallest element is: " $small;
