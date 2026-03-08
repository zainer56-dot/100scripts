#!/bin/sh
total=10
concluidas=0
for tarefa in 1 2 3 4 5 6 7 8 9 10
do
sleep 1
concluidas=`expr $concluidas + 1`
percent=`expr $concluidas \* 100 / $total`
preenchido=`expr $percent / 5`
barra=""
i=0
while [ $i -lt $preenchido ]
do
    barra="$barra#"
    i=`expr $i + 1`
done
printf "\rTarefas: [% -20s] %3d%% (%d/%d)" \
       "$barra" "$percent" "$concluidas" "$total"
done
echo
