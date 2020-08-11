#!/bin/bash -x

read -p "enter the first element: " first
read -p "enter the common ratio: " ratio
read -p "enter the number of elements: " num_elements

#assign first element to last
last=$first

echo "geometric progression is :"
echo $first

for (( i=0;i<num_elements-1;i++ ))
do
	element=$(( $last * $ratio ))
	echo $element

	#update the last item
	last=$element
done



