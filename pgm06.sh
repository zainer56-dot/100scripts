#!/bin/sh
clear
echo "Digite a string"
read str
tam=`echo $str | wc -c`
tam=`expr $tam - 1`
echo " O tamanho da string : $tam"
