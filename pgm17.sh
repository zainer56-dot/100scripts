#!/bin/sh
printf "Digite um numero: "
read num
i=2
primo=1   # 1 = primo, 0 = não primo
if [ $num -le 1 ]; then
    primo=0
fi
while [ $i -lt $num ]
do
if [ `expr $num % $i` -eq 0 ]; then
        primo=0
 break
fi
    i=`expr $i + 1`

done
if [ $primo -eq 1 ]; then
    echo "$num é primo"
else
    echo "$num não é primo"
fi
