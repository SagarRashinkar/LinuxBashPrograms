# WAP which takes command-line argument as a input and check that number is prime then show that
# the prime number is palindrome also

#!/bin/bash

function isPrime(){

	num=$1;
	count=0;
	for (( i=1;i<=$number;i++ ))
	do
		if [ `expr $number % $i` -eq 0 ]
		then
			count=$(( count+1 ))
		fi
	done

	if [ $count -eq 2 ] 
	then
		echo "$number is prime number";
		isPalindrome $num
	else
		echo "$number is not prime number";
	fi

}

function isPalindrome(){

	number=$1;
	temp=$number;
	last=0;
	sum=0;

	while [[ $number -ne 0 ]]
	do	
		last=$(( $number%10 ))
		sum=$(( $sum*10+$last ))
		number=$(( $number/10 ))
	done
	
	if [[ $temp -eq $sum ]]
	then
		echo "$temp is Palindrome"
	else
		echo "$temp is not Palindrome"
	fi
}

read -p "enter number: " number
isPrime $number

