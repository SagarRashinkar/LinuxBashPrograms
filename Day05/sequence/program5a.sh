#!/bin/bash

givenInch=42;
echo "1 feet is equals to: 12 inch";
if [ true  ]
then
	echo "$givenInch is equals to: " `awk "BEGIN {print $givenInch / 12}"` inch
fi
