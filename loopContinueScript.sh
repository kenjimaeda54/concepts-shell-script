#!/bin/bash


# com a palavra reservada continue a rotina volta para inicio do for
# neste exemplo se ele encontrar o continue nao vai executar oque esta abaixo do if

read -p "Quem e o(a) melhor aluno(a)?" STUDENT


for i in  $(cat /home/kenji/shell_script/shell/myTemp/alunos2.txt) 
do
	echo "Aluno $i"
	if [ $i == $STUDENT  ]
	then
		echo "Neste arquivo tem o melhor aluno(a)-- $i" 	
	   	continue
	fi	
done 





