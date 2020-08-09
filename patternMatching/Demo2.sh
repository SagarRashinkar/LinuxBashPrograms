#!/bin/bash -x

#extended glob
shopt -s -extglob

#user input
read -p "enter any string :" word
echo "string : "$word

#pattern creation
pattern="^[a-zA-Z]{3}[a-zA-Z0-9\#\.\!\$\_]*\@[a-z]*\.(co|in|com)$"

if [[ $word =~ $pattern ]]
then
	echo "yes"
else
	echo "no"
fi

