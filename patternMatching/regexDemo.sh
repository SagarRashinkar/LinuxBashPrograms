#!/bin/bash -x

#turn on extended globbing
shopt -s extglob

read -p "enter string with thing in end : " word

if [[ $word == +(some|any)thing ]]
then
	echo yes;
else
	echo no;
fi

