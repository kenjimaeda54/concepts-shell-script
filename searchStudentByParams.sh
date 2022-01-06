#!/bin/bash

DIRECTORY="/home/kenji/shell_script/myTemp/alunos2.txt"

echo "==========================="
SEARCH=$(grep -i  $1  $DIRECTORY) 
echo "O aluno encontrado foi $SEARCH "


