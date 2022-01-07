#!/bin/bash


DIRDEST=$HOME/backup

if ! [ -d  $DIRDEST ]
then 
     echo "Criando diretorio $DIRDEST.."
     mkdir $HOME/backup
fi      

# 7 e a quantidade de dias,porque desejo semanal
# * estou pegando tudo 
FIND=$(find $DIRDEST -ctime -7 -name backup-home\*tgz)
NAMEFILE=$(date +%Y%H%M%d%S)

# find pode retornar um diretorio com caracter especial
# preciso entao proteger entre aspsas
if [ "$FIND" ]
then
    echo "Já existe um arquivo de backup"
    # pega a primeira letra
    echo "Deseja criar um novo arquivo de backup? (S/N)" 
    read -n1 CHOISE
    echo  
    if [ "$CHOISE" = s -o "$CHOISE" = S ]
    then
        echo "Sera criado mais um backup da mesma semana"
    else
        echo "Arquivo não vai ser criado"
        exit
    fi  
fi     

# progrma continua quando o comando then for acionado,programa so para no exit
# comando tar vai criar um arquivo tar com o nome backup_home_data.tgz
# no diretorio $DIRDEST 
# $HOME e oque desejo fazer backup ou seja tudo que estiver em /home/Kenji que e o diretorio
# pricipal  $HOME e varivavel de ambiente representa o diretorio home do usuario 
#estou excluindo dirst porque se nao vou fazer backup do backup
# --absolute-names e para que o diretorio seja absoluto,nao pegue as quebras da barra
echo "Criando backup"
tar zcvpf $DIRDEST/backup-home-$NAMEFILE.tgz  --absolute-names  --exclude="$DIRDEST"  "$HOME"/* > /dev/null             
echo
echo "Backup realizado com sucesso"

