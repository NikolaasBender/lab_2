#!/bin/bash
# Authors : Your Name & Your partner's name
# Date: 1/1/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!

phoneregex = /^[\.-)( ]*([0-9]{3})[\.-)( ]*([0-9]{3})[\.-)( ]*([0-9]{4})$/
findfile = regex_practice.txt
phonetxt = phone_results.txt
emailtxt = email_results.txt

#COUNT PHONE NUMBERS
grep '/^[\.-)( ]*([0-9]{3})[\.-)( ]*([0-9]{3})[\.-)( ]*([0-9]{4})$/' $findfile -c >> $outfile