#!/bin/bash
#wc e reponsavel por contar a quantidade de linhas, colunas e caracteres de um arquivo
#quando for 4 nucleos vao ser 4 linhas, colunas e caracteres
QUANTITYCPU=$(cat /proc/cpuinfo -s | egrep "model name"| wc -l)      
VERSIONKERNEL=$(uname  --r)
MEMORYTOTAL=$( expr  $(cat /proc/meminfo| grep MemTotal -i|tr -d ' '|cut -d:  -f2|tr -d kB) / 1024)
HOSTNAME=$(hostname)
UPTIME=$(uptime -s)
# egrep aceita regex, cut -d vai separar e pegar os valores que desejo,head e um cabecalho,consigo pegar a quantidade
# que desejo  nesse caso a primeira linha
MODELCPU=$(cat /proc/cpuinfo -s| egrep "model name"|cut -d' ' -f3-|head -n 1)

clear
echo  "Crie um script que gere um relatório de algumas informações da máquina
atual:"
echo  " "
echo  "===================================="
echo  "Relatorio da maquina:$HOSTNAME"
echo  "Data e hora atual: $(date) "
echo  "===================================="
echo  "Maquina ativa desde:$UPTIME"
echo  ""
echo  "Versao do kernel: $VERSIONKERNEL"
echo  " "
echo  "CPUs:" 
echo  " "
echo  "Quantidade de CPU/CORE: $QUANTITYCPU"
echo  "Modelo do CPU: $MODELCPU"
echo  " "
echo  "Memoria total $MEMORYTOTAL MB"
echo  " "
echo  "Particoes"
df


 



