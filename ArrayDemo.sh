#!/bin/bash -x

count=0;
Cars[((count++))]="BMW"
Cars[((count++))]="FORD"
Cars[((count++))]="FERRARI"

echo ${Cars[@]}

echo "data at position 0:" ${Cars[0]}
echo "data at position 1:" ${Cars[1]}
echo "data at position 2:" ${Cars[2]}

echo "count is: "$count
