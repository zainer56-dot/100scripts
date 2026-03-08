#!/bin/sh
clear
echo "String 1"
read str1
echo "String 2"
read str2
str3=`echo $str1 $str2`
echo " String Concatenada = $str3"

