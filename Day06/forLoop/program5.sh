# Write a program that can prints the factorial of a number

#!/bin/bash -x
read -p "enter number :" number
fact=1;
for (( i=1;i<=$number;i++ ))
do
	fact=$(( $fact * $i ))
done
echo "factorial of $number is :"$fact;
