#!/bin/sh
i=1
j=10
printf "Menor numero "
read a
printf "Maior numero "
read b
while test $a -le $b
do
	echo
        echo " Tabela do $a"
        echo
        while [ $i -le $j ]
        do
	  k=`expr $a \* $i`
          echo $a \* $i = $k
          i=`expr $i + 1`
        done
i=1
a=`expr $a + 1`
done

