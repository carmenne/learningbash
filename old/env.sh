#!/bin/bash

#Ask for a number
read -p 'Give a number which should be 1 or 2 ' number
if [ $number -eq 1 ]
then
	VAR="Yes"
elif  [ $number -eq 2 ]
then
	VAR="No" 
else
	echo "Error"
	exit 2
fi

export $VAR
echo $VAR
