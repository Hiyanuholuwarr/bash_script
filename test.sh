#!/bin/bash
echo "Enter a number"
read num
if [ $num -lt 10 ] ;
then 
echo "your number $num is less than 10"
elif [ $num -lt 20 ] ;
then echo "Number less than 20"
fi
