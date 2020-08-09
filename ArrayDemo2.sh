#!/bin/bash -x

count=0;

declare -a cricketTeam
cricketTeam[count++]="First"
cricketTeam[count++]="Second"
cricketTeam[count]="Last"

echo ${cricketTeam[2]}

echo ${cricketTeam[@]}
