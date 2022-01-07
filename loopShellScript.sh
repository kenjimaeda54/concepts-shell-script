#!/bin/bash

read -p "Entre com o valor iniciail:" INITIAL
read -p "Entre com o valor final:" FINAL

for i in `seq $INITIAL $FINAL`
do
       echo "Valor $i"
       sleep 3
done       

DIRECTORY=$(cat $HOME/shell_script/shell/myTemp/alunos*)

for i in $DIRECTORY
do     
       echo "Alunos $i"
       sleep 1
done       

for sequential in $(seq 1 5 20)
do     
       echo "Valor $sequential"
done       