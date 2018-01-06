#!/bin/bash
# Check if only one argument is inputed

if [ $# -eq 1 ]
then 
	echo $1
else
	echo "Only one argument is accepted"
fi
