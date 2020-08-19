#!/bin/bash

arrCnt=0;
for (( i=0;i<100;i++ ))
do
	num=$i;
	sum=0;
	last=0;
	if [[ num -gt 10 && num -lt 100 ]]
	then
		while [[ $num -ne 0 ]]
		do
			last=$(( $num%10 ))
			sum=$(( $sum*10+$last ))
			num=$(( $num/10 ))
		done

		if [[ $i -eq $sum ]]
		then
			myArray[$((arrCnt++))]=$i;
		fi
	fi
done

echo "Array of repeated digits are :" ${myArray[@]}

