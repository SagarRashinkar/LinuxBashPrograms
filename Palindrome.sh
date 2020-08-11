#!/bin/bash
read -p "enter number :" number
reverse=0;
num=$number;
while [ $number -gt 0 ]
do
	last=`expr $number % 10 `
	number=`expr $number / 10 `

	reverse=`expr $reverse \* 10 + $last`
done

echo "reverse is: "$reverse

if [ $reverse -eq $num ]
then
	echo "Palindrome"
else
	echo "Not Palindrome"
fi

