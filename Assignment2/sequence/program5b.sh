#!/bin/bash

# 1 feet = 0.3048 meter
# 1 feet = 12 inch
# to convert inch to meter we have to devide by 39.37

#taking inch
one_Feet=0.3048;

#calculating feets
total_Feets=$(( 60 * 40 ));

echo "60 feet x 40 feet: " `awk "BEGIN {print $total_Feets * 0.3048}"` meters
