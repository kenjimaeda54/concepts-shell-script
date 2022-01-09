LOG="/home/kenji/shell_script/shell/log-internt.txt"

# arquivos de log podem ser qualquer extensao
# essa frase toda sera escrita no arquivo de log
# com dois >> maior garanto o append,com apenas um ou apoga o anterior
echo "$(date) Inicio do script" >>$LOG

# existe a opcao de mostrar algo na tela e escrever no log
# com o comando tee
# vai printar na tela o inicio do script
echo "Inicio do script" | tee -a $LOG
echo "Ola mundo"

echo "$(date) Fim do script" >>$LOG
echo "Ola mundo novamente"

# scritp todo vai para o log
exec >>$LOG
exec 2>&1

#para fazer o comando tee aqui preciso usar outra tecnica,process substitution
exec 1>> >(tee -a "$LOG")
