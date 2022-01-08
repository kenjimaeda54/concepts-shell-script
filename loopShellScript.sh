#!/bin/bash

# por padrao o separador no linux e o IFS
# comando para ver o IFS , set| grep IFS
# voce pode mudar o IFS para qualquer caracter
# exemplo: IFS=":"
# mas antes precisa fazer backup do IFS, exemplo:
# IFS_BACKUP=$IFS

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


