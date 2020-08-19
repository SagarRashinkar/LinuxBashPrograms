#!/bin/bash -x

#extended glob
shopt -s extglob

#user input
read -p "enter any string: " word
echo "string :" $word

#patten creation
pattern=^[7-9]{1}[0-9]{9}$
if [[ $word =~ $pattern ]]
then
	echo "yes"
else
	echo "no"
fi
