#!/bin/bash
# Authors : Trevor Lana
# Date: 2/7/2020

#Problem 1 Code:
#Make sure to document how you are solving each problem!

#take filename and regex from user
echo "Enter a filename:"
read fileName
echo "Enter a regular expression:"
read regEx
#execute grep command with the provided strings
grep $regEx $fileName

#assumes all of the phone numbers are formatted in the same way, 
#don't begin with a 0
egrep -c "^[0-9]{3}-[0-9]{3}-[0-9]{4}" regex_practice.txt

#same as previous command but prints what is found , and only allows 303 at the start
egrep -o "^303-[0-9]{3}-[0-9]{4}" regex_practice.txt

# searches for an @ followed by any characters and then a . literal and any three characters
#won't exclude emails that have spaces in them, even though those are invalid addresses
egrep -c ".+@.+\..{3}$" regex_practice.txt

#any string followed by @geocities.com
egrep ".+@geocities.com$" regex_practice.txt >> email_results.txt