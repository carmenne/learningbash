#!/bin/bash
# Create more files and iterate through them
for n in 1 2 3 4 5
	do
		touch file$n
	done

# Iterate over all files using a placeholder

for f in file?
	do
		echo "I am file named $f" > $f
	done

cat file?
