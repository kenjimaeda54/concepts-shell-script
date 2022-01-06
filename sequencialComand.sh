#!/bin/bash

clear
#executar o comando  em sequencia
echo $(date; hostname; whoami)
#excuta o segundo comando se o primeiro nao falhar
#neste caso nao vai executar nada porque alunos3 nao existe
echo ""
echo $(cat /home/kenji/shell_script/shell/myTemp/alunos3.txt && hostname)
echo ""
#executa o segundo comando se o primeiro falhar
echo $(cat /home/kenji/shell_script/shell/myTemp/alunos3.txt  || cat /home/kenji/shell_script/shell/myTemp/alunos2.txt )