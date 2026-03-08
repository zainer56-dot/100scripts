#!/bin/sh
clear
i=1
while [ `expr $i \* 5` -le 50 ]
do
echo $i
    echo `expr $i \* 5`
    i=`expr $i + 1`
done
