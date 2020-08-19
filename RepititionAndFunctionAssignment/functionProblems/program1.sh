#Conversion of temperature from degree to farenheit and vice versa

#!/bin/bash

#constants
CEL_FREEZ_LIMIT=99;
FER_FREE_LIMIT=212;

function toFarenheit(){

	read -p "Enter temperature in celsius : " cel;
	freezBoilPoint $cel;
	# formula
	degF=$(( ($cel * 9/5)+32 ));
	echo "$cel celcius in farenheit is :" $degF;
}

function toCelsius(){

	read -p "Enter temperature in farenheit : " faren;
	freezBoilPoint $faren;
	# formula
	degC=$(( ($faren - 32) *5/9 ));
	echo "$faren farenheit in celsius is :" $degC;
}
 
function freezBoilPoint(){

	if [ $cel -lt $CEL_FREEZ_LIMIT ]
	then
		echo "freezing point"
	elif [ $faren -lt $FER_FREEZ_LIMIT ]
	then
		echo "freezing point"
	else
		echo "boiling point"
	fi
}
echo "1. Celsius Temperature to Fahrenheit"
echo "2. Fahrenheit Temperature to Celsius"
echo "3. Exit"
read -p "enter your choice (1/2/3) : " choice

case $choice in
	1)
		toFarenheit
		;;
	2)
		toCelsius
		;;
	*)
		exit
		;;
esac

