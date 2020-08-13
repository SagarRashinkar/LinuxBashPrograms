# Flip coin problem to check either Head or Tail wins 11 times

#!/bin/bash
tcount=0;
hcount=0;
i=1;
wcnt=11;

while [ $i -le 22 ]
do
	i=$(( i+1 ))
	if [[ $((RANDOM%2)) -eq 0 ]]
	then
		#echo "Head";
		hcount=$(( hcount+1 ))
	else
		#echo "Tail";
		tcount=$(( tcount+1 ))
	fi
	
done

if [ $hcount -eq $wcnt ]
then
	echo "Head count is : " $hcount;
	echo "winner";
else
	echo "Tail count is : " $tcount;
	echo "winner";
fi


