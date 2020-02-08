#!/bin/bash
# Authors : Drew Hoffman
# Date: 2/7/2020

#Problem 1 Code:
#echo command and read command

echo "Input a file name"
read file
echo "Input a regular expression"
read exp

#Problem 2 Code:
#grep command and variables

grep $exp $file

#Problem 3 Code:
#-c for count, regular expression for phone number
#need -P to use regex syntax w/ grep

grep -c -P '^[0-9]{3}-[0-9]{3}-[0-9]{4}$' regex_practice.txt

#Problem 4.1 Code
#same as 3 with new regex
#Can use simpler regex '.+\@.+\..+' but could allow false positives

grep -c  -P '[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}' regex_practice.txt

#Problem 4.2 Code
#added 303 to phone number expression

grep -o -P '^303-[0-9]{3}-[0-9]{4}$' regex_practice.txt

#Problem 4.3 Code
#added geocities domain to email expression

grep -P '[a-zA-Z0-9._%+-]+@geocities\.com' regex_practice.txt >> email_results.txt

git add email_results.txt
git commit -m"pushing results"

#pushed to github manually
