#!/bin/sh
#
clear
echo " Entre com o primeiro valor:"
read a
echo " Entre com o segundo valor:"
read b
echo " Entre com o terceiro valor:"
read c
if test $a -gt $b -a $a -gt $c
   then
   echo " $a maior"  
   else
      if test $b -gt $c
      then
      echo "$b maior"
      else
      echo "$c maior"
      fi
fi
