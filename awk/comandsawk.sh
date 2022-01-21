#!/bin/bash

# por padrão ele entende que o separator e os espaços

ps| awk '{print $1}' # vai printer a segunda coluna


# para determinar o separator e -F

# print e uma ação,tem que ser aspas simples
# awk funciona com uma opção nesse caso -F e o separator
# depois o comando que vai ser executado
# e depois o file que vai ser lido
awk -F ":" '{print $1}' /etc/passwd


# para expressoes regulares vao antes do comando
awk -F "/" '/^\//  {print $NF}' /etc/shells


# para organizar e retirar os iguais
awk -F "/" '/^\//  {print $NF}' /etc/shells | uniq | sort

# comando importante para pegar uma quantidade com length
df| awk  '{ print $1  }'| awk 'length($0) > 7'

# comando em uma linha com for
awk 'BEGIN {for(i=0;i < 7;i++ ) print "o valor de i multiplicado por ele mesmo e",i,"is" i*i}'

# comando substring do awk
# https://www.linuxcommands.site/linux-text-processing-commands/linux-awk-command/awk-substr/

# vari printar da sétima linha ate a 11
awk 'NR==7,NR==11 {print NR, $0}' /etc/passwd

# vai printar quantas linhas tem
awk 'END {print NR}' /etc/passwd


