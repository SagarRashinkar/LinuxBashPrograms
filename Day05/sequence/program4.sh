#!/bin/bash
for(( i=1;i<=5;i++ ))
do
	randomValue=$(( RANDOM%100 ));
	echo $randomValue;
	sum=$(( $sum + $randomValue ));
done
echo "sum is: "$sum;
echo "average is: "$(( $sum / 5 ));
