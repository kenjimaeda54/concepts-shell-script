#!/bin/bash

clear
echo: "Crie um Script que após executado solicite dois valores como entrada. Esses
valores devem ser somados e o resultado exibido para o usuário"

echo "" 
read -p "Entre com o primeiro valor:"  FIRSTVALUE
read -p "Entre com o segundo valor:"  SECONDVALUE
echo " " 
# RESULT=$(($FIRSTVALUE+$SECONDVALUE))
RESULTS=$(expr $FIRSTVALUE + $SECONDVALUE)
echo "Soma de  $FIRSTVALUE mais $SECONDVALUE e $RESULTS"



