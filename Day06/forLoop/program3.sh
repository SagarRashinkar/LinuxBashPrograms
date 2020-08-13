# Program3 => Write a program that takes a input and determine the number is prime

#!/bin/bash

read -p "enter number :" number
count=0;
num=$number
for (( i=1;i<=$num;i++ ))
do
	if [ `expr $number % $i` -eq 0 ]
	then
		count=$(( $count+1 ))
	fi
done

if [[ $count -eq 2 ]]
then
	echo "$number is prime number"
else
	echo "$number is not prime number"
fi
