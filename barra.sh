#!/bin/sh
#
#PURPOSE: Criar uma barra de status
i=0
while [ $i -le 100 ]
do
    printf "\r[%3d%%]" "$i"
    sleep 1
    i=`expr $i + 5`
done
echo
