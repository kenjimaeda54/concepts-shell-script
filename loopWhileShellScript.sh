#! /bin/bash



read -p "Informe a quantidade maxima de processos:" MAX

# while fica ativo enquanto for verdadeiro a condicao
# quando for falso vai sair do while
while [ $(ps axu| wc -l) -le "$MAX" ]
do              
	echo "Tudo ok,quantidade de processo $(ps axu| wc -l)"
        sleep 2

done
echo  "Atingiu a quantidade"
echo  "Monitorando sistema"
