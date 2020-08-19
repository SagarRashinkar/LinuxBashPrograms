# Prob 2) Flip Coin Simulation Problem
# This problem displays the winner Heads or Tailsi) As a Simulator start with Flipping a Coin to Display Heads or Tails as winner -
# Use ((RANDOM)) to find Heads or Tails Name the file flipCoinSimulator.sh
# ii) As a simulator, loop through Multiple times of flipping a coin and show
# number of times head and tail has won
# iii) Modify the earlier UC 2 to continue till either of them have won 21 times.
# Show if it’s a Win or Tie. If Win then who won and by how much UC 3
# iv) Extend UC 3 to ensure if its tie then the game continues till the difference of
# minimum 2 points is achieved



#!/bin/bash

hcount=0
tcount=0

while [[ ($hcount -lt 21) && ($tcount -lt 21) ]]
do
	randomCheck=$(( RANDOM%2 ))
	if [[ $randomCheck == 0 ]]
	then
		echo "Head"
		((hcount++));
	else
		echo "Tail"
		((tcount++));
	fi
done

echo "head count is: $hcount"
echo "tail count is: $tcount"

if [[ $hcount -eq 21 ]]
then
	echo "$hcount times Head is winner"
elif [[ $tcount -eq 21 ]]
then
	echo "$tcount times Tail is winner"
else
	echo "match is tie"
fi

