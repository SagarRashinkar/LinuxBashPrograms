#!/bin/bash

read -p "enter day:" day
echo "day :"$day
read -p "enter month:" month
echo "month :"$month

if [ $month -ge 03 ] && [ $month -le 06 ]
then
	echo "true"
else
	echo "false"
fi
