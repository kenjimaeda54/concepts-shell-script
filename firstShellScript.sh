#!/bin/bash

clear
echo: "Crie um Script que após executado solicite dois valores como entrada. Esses
valores devem ser somados e o resultado exibido para o usuário"

echo "" 
echo "Entre com o primeiro valor"
read FIRSTVALUE
echo ""
echo "Entre com o segundo valor"
read SECONDVALUE
echo " "
RESULT=$(($FIRSTVALUE+$SECONDVALUE))
echo "Soma de  $FIRSTVALUE mais $SECONDVALUE e $RESULT"



