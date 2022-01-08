#!/bin/bash


# assim que o shell econtrar a palavra reservada a rotina e terminada
read -p "Quem e o(a) melhor aluno(a)?" STUDENT


for i in  $(cat /home/kenji/shell_script/shell/myTemp/alunos2.txt) 
do
	echo "Aluno $i"
	if [ $i == $STUDENT  ]
	then
		echo "Neste arquivo tem o melhor aluno(a)-- $i" 	
	   	break
	fi	
done 





