# WAP that computes factorial of a number N using prime factorizarion method 
# print the prime factors of a number N

#!/bin/bash
read -p "enter number :" number
count=0;

for ((i=1;i<=number;i++))
do
	if [ `expr $number % $i` -eq 0 ]
	then
		count=$(( $count+1 ))
	fi
done
count2=0;
if [ $count -eq 2 ]
then
	echo "number is prime"
	echo "prime factors are:"
	num=$number
	for (( i=1;i<=$num;i++ ))
	do
		if [ `expr $number % $i` -eq 0 ]
		then
			echo $i;
		fi
	done
else
	echo "number is not prime"
fi
