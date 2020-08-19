# WAP to find a magic number

#!/bin/bash

read -p "enter number: " number

sum=0;
while [[ $number -gt 0 || $sum -gt 9 ]]
do
	if [[ $num -eq 0 ]]
	then
		num=$sum;
		sum=0;
	fi

	last=$(($number%10))
	sum=$(($sum+$last))
	number=$number/10
done

if [[ $sum -eq 1 ]]
then
	echo "Its a magic number";
else
	echo "Its not a magic number";
fi

