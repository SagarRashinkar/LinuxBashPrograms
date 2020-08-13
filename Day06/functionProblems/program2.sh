# WAP to check that numbers are Palindrome or not

#!/bin/bash -x


function isPalindrome(){
	
	num=$1;
	temp=$1;
	sum=0;
	last=0;

	while [[ $num -ne 0 ]]
	do
		last=$(( $num%10 ));
		sum=$(( $sum*10+$last ));
		num=$(( $num/10 ));
	done

	if [[ $temp -eq $sum ]]
	then
		echo "number is palindrome";
	else
		echo "number is not palindrome";
	fi
}

read -p "enter number:" number
isPalindrome $number
