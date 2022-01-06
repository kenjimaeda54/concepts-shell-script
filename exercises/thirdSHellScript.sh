#!/bin/bash

echo "==========================================================="
# Precisa de um parametro para executar o script
#./thirdSHellScript.sh <nome do usuario>
echo "==========================================================="
ls /home/$1 > /dev/null 2>&1 || { echo "Usuario nao existe"; exit 1; }

USERID=$(grep $1 /etc/passwd| cut -d":" -f3)
DESCRIPTION=$(grep kenji /etc/passwd| cut -d":" -f5| tr -d ",")


echo
echo "==================================="
echo "Relatorio do  Usuario: $1"
echo ""
echo "UID: $USERID"
echo "Nome ou descricao: $DESCRIPTION"
echo ""
echo "Ultimo Login"
lastlog -u $1
echo "==================================="

