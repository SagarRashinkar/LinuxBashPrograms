# Program 2 => Write a program that takes commandline argument n and prints the nth harmonic number
# 

#!/bin/bash

read -p "enter last number: " number
num=1;
for (( i=1;i<=$number;i++ ))
do
	div= awk "BEGIN {print $num/$i}";
done

