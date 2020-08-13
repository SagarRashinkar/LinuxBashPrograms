#!/bin/bash -x

value1=$((RANDOM%6 +1)) ;
value2=$((RANDOM%6 + 1));
result=$(( $value1 + $value2 ));

