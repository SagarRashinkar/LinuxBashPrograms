# WAP that takes command-line argument N and prints a table of the power of 2 that are less than or
# equals to 2^n till 256 is reached.

#!/bin/bash

read -p "enter number:" number

i=1;
while [ $i -le 9 ]
do
	i=$(( i+1 ));
	res=$(( number ** i ))
	if [ $res -le 256 ]
	then
		echo "$number to the power of $i is :" $res
	else
		exit;
	fi
done

