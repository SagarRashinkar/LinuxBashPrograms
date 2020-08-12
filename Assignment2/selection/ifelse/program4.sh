#!/bin/bash -x

flip_Coin=$(( RANDOM%2 ))

if [ $flip_Coin -eq 0 ]
then
	echo "Head"
else
	echo "Tail"
fi

