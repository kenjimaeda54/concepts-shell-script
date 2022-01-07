#!/bin/bash

echo "Crie um script que baseado no horário atual escreva Bom Dia, Boa Tarde ou
Boa Noite. Considere que o começo do dia às 06:00"
echo " "

DATENOW=$(date +%X)
DATEHOUR=$(date +%H)
case "$DATEHOUR" in
    [06-12])
        echo "Bom dia"
        echo  "Hora atual: $DATENOW"
        ;;
    [13-18])
        echo "Boa tarde"
        echo  "Hora atual: $DATENOW"
        ;;
    [20])
        echo "Boa noite"
        echo  "Hora atual: $DATENOW"
        ;;
    *)
        echo "Hora inválida"
        echo "$DATEHOUR"
        ;;
esac        