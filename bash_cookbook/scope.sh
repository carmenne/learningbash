#!/bin/bash

# Objective: Demonstrate variable scopes

echo -e "\e[1;31mmy_var='Hi, parent' \e[m"
echo "my_var: $my_var" 
echo -e "\e[1;31mmy_var='Hi, child scope' ./scope.sh my_var: $my_var 
This returns my_var='Hi, child scope', so the scope is overriden\e[m"
echo -e "\e[1;31mexport my_var\e[m"
