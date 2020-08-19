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
