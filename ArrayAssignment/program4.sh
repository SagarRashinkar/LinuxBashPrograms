#!/bin/bash

# creating array and taking input from user

declare -a arr
read -p "enter size of array:" size
echo "enter $size array elements: "
for ((i=0;i<size;i++))
do
	read -p "enter element: " element;
	arr[i]=$element;
done

for (( i=0;i<$size-2; i++ ))
do
	for (( j=$j+1;j<$size-1;j++ ))
	do
		for (( k=k+1;k<size;k++ ))
		do
			sum=$(( ${arr[i]}+${arr[j]}+${arr[k]} ))
			if [[ sum -eq 0 ]]
			then
				echo "[ ${arr[i]}" "${arr[j]}" "${arr[k]} ]" = $sum
				echo "sum of three elements is equals to zero"
			fi
		done
	done
done

