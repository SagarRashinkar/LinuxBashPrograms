#!/bin/bash

read -p "enter number:" number

if ( [ $number -gt 0 ] && [ $number -lt 10 ] )
then
	echo "its unit";
elif ( [ $number -ge 10 ] && [ $number -lt 100 ] )
then
	echo "its Ten";
elif ( [ $number -ge 100 ] && [ $number -lt 1000 ] )
then
	echo  "its Hundred";
elif( [ $number -ge 1000 ] && [ $number -lt 10000 ] )
then
	echo "its Thousand";	
else
		echo "enter valid number";
fi
