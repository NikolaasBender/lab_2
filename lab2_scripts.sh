#!/bin/bash
# Authors : Your Name & Your partner's name
# Date: 1/1/2019

findfile='regex_practice.txt'
phonetxt='phone_results.txt'
emailtxt='email_results.txt'

#1 COUNT PHONE NUMBERS
grep '\(([0-9]\{3\})\|[0-9]\{3\}\)[ -.]\?[0-9]\{3\}[ -.]\?[0-9]\{4\}' $findfile -c

#2 COUNT THE NUMBER OF EMAILS 
grep -E -o "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b" $findfile -c

#3 LIST ALL 303 PHONE NUMBERS
grep '\((303)\|303\)[ -.]\?[0-9]\{3\}[ -.]\?[0-9]\{4\}' $findfile >> $phonetxt

#4 LIST ALL @geocities.com EMAILS
grep '@geocities.com' $findfile >> $emailtxt

read -p "Enter some search string: " searcher
echo
grep $searcher $findfile >> 'comand_results.txt'

read -p "Enter anything to reset: " searcher
echo
rm $phonetxt $emailtxt