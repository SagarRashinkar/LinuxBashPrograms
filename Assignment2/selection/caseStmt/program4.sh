#!/bin/bash

read -p "enter value:" value

echo "$value Feet in Inch is :"`awk "BEGIN{print $value * 12 }"` inch

echo "$value Inch in Feet is :"`awk "BEGIN{print $value / 12 }"` feet

echo "$value Feet in Meter is :"`awk "BEGIN{print $value / 3.281 }"` meter

echo "$value Meter in Feet is :"`awk "BEGIN{print $value * 3.281 }"` feet

