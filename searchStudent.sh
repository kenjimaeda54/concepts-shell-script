#!/bin/bash



clear
echo  "============================"
echo  "Entre com o nome do aluno"
read  STUDENT
#computador le de cima para baixo entao student precisa estar abaixo desta linha se desejo usar 
DIRECTORY=(/home/kenji/shell_script/myTemp/alunos2.txt)
SEARCH=$(grep -i  $STUDENT  $DIRECTORY )
echo  "Aluno encontrado"
echo  $SEARCH



