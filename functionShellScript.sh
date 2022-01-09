#!/bin/bash


# as funcoes internamente seus pametros segue mesmo prinpcio dos parametros do shell
# $0 - Nome do programa
# $# - Quantidade de parametros
# $* - Todos os parametros inseridos
# $1-9  - Cada um dos pametros

# local sao variaveis que apenas a funcao consegue interpretar
# sem a palavra reservada ela se torna global, por padrao sao globais
sum(){
	local SUM=$(expr $1 + $2)
	echo "Resultado da soma e $SUM"

}


sum 10 20

# por padrao so posso retornar da fucntion valores de 0 a 255,nao aceita string
function getName(){
        echo   "OLA $1" 
        return 0
}

# $1 e parametro do arquivo shell script e nao da funcao
VAR1=$(getName $1)
# $? retonra o falor da funcao
# primeiro vai printar o retorno no caso 0
# depois o echo da funcao getName
echo "Retorno da funcao $?"
echo $VAR1



