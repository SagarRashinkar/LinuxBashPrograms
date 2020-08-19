#!/bin/bash
declare -A dict

one=0;
two=0;
three=0;
four=0;
five=0;
six=0;

while [ true ]
do
	dict[value]=$(( (RANDOM%6) +1 ))
	var=${dict[value]}

	if [[ $var -eq 1 ]]
	then
		((one++))
	fi
	if [[ $var -eq 2 ]]
	then
		((two++))
	fi
	if [[ $var -eq 3 ]]
	then
		((three++))
	fi
	if [[ $var -eq 4 ]]
	then
		((four++))
	fi
	if [[ $var -eq 5 ]]
	then
		((five++))
	fi
	if [[ $var -eq 6 ]]
	then
		((six++))
	fi

	if [[ $one -eq 10 ]]
	then
		echo "The count of one is ten";
		break
	fi
	if [[ $two -eq 10 ]]
	then
		echo "The count of two is ten";
		break
	fi
	if [[ $three -eq 10 ]]
	then
		echo "The count of three is ten";
		break
	fi
	if [[ $four -eq 10 ]]
	then
		echo "The count of four is ten";
		break
	fi
	if [[ $five -eq 10 ]]
	then
		echo "The count of five is ten";
		break
	fi
	if [[ $six -eq 10 ]]
	then
		echo "The count of six is ten";
		break
	fi
done
arr=($one $two $three $four $five $six)
echo "counts of each value is :" ${arr[@]}

min=${arr[0]}
max=${arr[0]}

for i in ${arr[@]}
do
	if [[ $i -lt $min ]]
	then
		min=$i;
	fi
	if [[ $i -gt max ]]
	then
		max=$i;
	fi
done
echo "minimum: " $min;
echo "maximum: " $max;
