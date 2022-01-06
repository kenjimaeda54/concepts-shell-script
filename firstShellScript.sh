#!/bin/bash

#Normalmente as variaveis sao determinadas no comeco do arquivo em maisculo
#Elas sao mutaveis se determinar um arquivo aqui sao alteradas em qualquer lugar
#Para ver as variaveis tem o comando env e set. Env so ve as as variaveis globais, set aparece  toda
#todas as variaveis,para env,mostrar a variavel precisa ser exportada,as locais ele nao interpreta
#aspas duplas nao protege $ ` /, excelente quando queremos usar varivas concatenando algo
#aspas simples protegem tudo

DATAHORA=$(date +%H:%M)
DIRECTORYSTUDENT="/home/kenji/shell_script/myTemp/alunos2.txt"
CURRENTDIRECTORY=$(pwd)

clear
echo "===========Hello Wercold======="
echo " "
# sifrao nao e protegido pelo aspas duplas entao sera interpretado como variavael
# aspas deitas ja sao protegidas
echo "Horario atual $DATAHORA"
echo ""
echo "==================================="
echo "Lista de alunos"
cd myTemp
sort $DIRECTORYSTUDENT
echo ""
echo "Diretororio atual $CURRENTDIRECTORY"

	
