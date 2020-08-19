#!/bin/bash

declare -A birthData

one=0;
two=0;
three=0;
four=0;
five=0;
six=0;
seven=0;
eight=0;
nine=0;
ten=0;
eleven=0;
twelve=0;

for (( i=1;i<=50;i++))
do
	birthMonth=$(( (RANDOM%12) +1 ))
	birthData[$i]=$birthMonth
done
echo ${birthData[@]}

for i in ${birthData[@]}
do
	if [[ $i -eq 1 ]]
	then
		((one++))
	fi
	if [[ $i -eq 2 ]]
	then
		((two++))
	fi
	if [[ $i -eq 3 ]]
	then
		((three++))
	fi
	if [[ $i -eq 4 ]]
	then
		((four++))
	fi

	if [[ $i -eq 5 ]]
	then
		((five++))
	fi
	if [[ $i -eq 6 ]]
	then
		((six++))
	fi
	if [[ $i -eq 7 ]]
	then
		((seven++))
	fi
	if [[ $i -eq 8 ]]
	then
		((eight++))
	fi
	if [[ $i -eq 9 ]]
	then
		((nine++))
	fi
	if [[ $i -eq 10 ]]
	then
		((ten++))
	fi
	if [[ $i -eq 11 ]]
	then
		((eleven++))
	fi
	if [[ $i -eq 12 ]]
	then
		((twelve++))
	fi
done
	dict=("Jan":$one "Feb":$two "Mar":$three "Apr":$four "May":$five "Jun":$six "Jul":$seven "Aug":$eight "Sept":$nine "Oct":$ten "Nov":$eleven "Dec":$twelve)
	echo "persons with same birth months are: " ${dict[@]}
