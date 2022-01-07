#!/bin/bash

echo "Crie um script que baseado no horário atual escreva Bom Dia, Boa Tarde ou
Boa Noite. Considere que o começo do dia às 06:00"
echo " "

DATENOW=$(date +%X)
DATEHOUR=$(date +%H)

if [ $DATEHOUR -gt 6 ]; 
then
    echo "Bom Dia"
    echo "Hora atual $DATENOW"
elif [ $DATEHOUR -gt 6 -a $DATEHOUR -le 16 ]; 
then
    echo "Boa Tarde"
    echo "Hora atual $DATENOW"
else
    echo "Boa Noite"
    echo "Hora atual $DATENOW"
fi 