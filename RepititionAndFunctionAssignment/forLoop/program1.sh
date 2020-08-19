#Program 1 => Write a program that takes a command line argument and prints a table of
#power of 2 that are less than or equals to 2^n.


#!/bin/bash
read -p "enter a number to print table of power of 2 :" number


for (( i=1;i<=$number;i++ ))
do
	power=$(( 2**$i ))
	echo $power
done

