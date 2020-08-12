#!/bin/bash

read -p "enter value of a:" a
read -p "enter value of b:" b
read -p "enter value of c:" c

a_value=$(( $a + $b * $c ))
b_value=$(( $a % $b + $c ))
c_value=$(( $c + $a / $b ))
d_value=$(( $a * $b + $c ))

echo "value of a :"$a_value;
echo "value of b :"$b_value;
echo "value of c :"$c_value;
echo "value of d :"$d_value;

if ( [ $a_value -gt $b_value ] && [ $a_value -gt $c_value ] && [ $a_value -gt $d_value ] )
then
	echo "$a_value is greater"

elif ( [ $b_value -gt $a_value ] && [ $b_value -gt $c_value ] && [ $b_value -gt $d_value ] )
then
	echo "$b_value is greater"
	
elif ( [ $c_value -gt $a_value ] && [ $c_value -gt $b_value ] && [ $c_value -gt $d_value ] )
then
	echo "$c_value is greater"

else
	echo "$d_value is greater"

fi

