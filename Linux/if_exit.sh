!#/bin/bash

#Basic if statements

# number variables
str1= 'this is a string'
srt2='this is different string'

# If $x is equal to $y, run th echo command.
if [ $x = $y ]
then
  echo "X is equal to Y!'
fi

#If x is not equal to y, exit the script
if [ $x != $y ]
then
  echo "X does not equal Y"
fi

#If strl is not equal to str2,run the echo command and exit the script.
if [ $str1 != $str2 ]
then
  echo "These strings do not match."
  echo "Existing this script."
  exit
fi

#If x is greater than y, run the echo command -only works for integer values
if [ $x -gt $y ]
then
  echo "$x is greater than $y".
fi

#check if x is less than y - only works for integer values
if [ $x -lt $y]
then
  echo "$x is less than $y!"
else
  echo "$x is not less than $y!"
fi

#check if $strl is equal to 'this string' AND $x is greater than $y
#only works if x and y are integers
if [ $strl = 'this string' ] && [ $x -gt $y ]
then
  echo "Those strings match and $x is greater than $y!"
else
  echo "Either those strings dont match, or $x is not greater than $y"
fi

#check if $strl is equal to str2 OR $x is less than $y
#only works if x and y are integers
if [ $str1 != $str2 ] || [ $x -lt $y ]
then
  echo "Either those strings don't match OR $x is less than $y!"
else
  echo "Those strings match, AND $x is not less than $y"
fi

#check for the /etc directory
if [ -d /etc ]
then
  echo "The /etc directory exists!'
fi

#check for my_cool_folder
if [ ! -d /my_cool_folder ]
then
  echo "my_cool_folder isn\'t there!"
fi

#check for my_file.txt
if [ -f /my_file.txt ]
then
  echo "my_file.txt is there"
fi

#if sysadmin is running this script, then run an echo command
if [ $USER != 'sysadmin' ]
then
  echo "You are not the sysadmin!"
  exit
fi

#if the uid of the user running this script does not equal 1000, run the echo command
if [ $UID -ne 1000 ]
then
  echo "Your UID is wrong"
  exit
fi

#if sysadmin is running this script, run the echo command
if [ $(whoami) = 'sysadmin' ] 
then
  echo "You are sysadmin!"
fi
