#!/bin/bash

# Double quotes vs single quotes
# Double quotes enable interpretation of special characters
# echo "Hello world!"
# In order to interpret special caraters as literals, no quotes or single quotes
# can be used. Special characters can also be escaped with backslash when
# used with double quotes
echo -e "\e[1;31mno quotes, single quotes and double quotes \e[m"
echo "Hello world\!" # this should print Hello world!
echo Hello world!
echo 'Hello world!'

#printf does not print new line. It has to be specified
echo -e "\e[1;31mprintf\e[m"
printf "Hello world!\n" #this needs to be in double quotes, it is ecuivalent to echo Hello world!

echo -e "\e[1;31mformat printing\e[m"
#printf is used for formatted printing
printf "%-5s %-10s %-4s\n" No Name Mark
printf "%-5s %-10s %-4.2f\n" 1 Carmen 7,25
printf "%-5s %-10s %-4.2f\n" 2 Teo 9,17

# escape in echo
echo -e "\e[1;31mescaping in echo\e[m"
echo -e "1\t2\t"
echo -e "Hello\nHello"
echo  "Hello\nHello" # -e is needed for escaping
