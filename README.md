# Shell Script Concept
Praticando shell script

# Feature
- Trabalhei com entrada de parâmetros no script  é também  do usuário pelo teclado
- Para entrada de parâmetros scripts tem alguns conceitos para leitura, no exemplo abaixo esta um script com detalhes
- Script são linguagens interpretadas, então são lidas de cima para baixo e o programa só encerra apos encontrar palavra reservada exit,break em loops ou quando realmente acaba o script
- Trabalhei com condições sequenciais usando entre os comandos  | que serve para redirecionar a saída para outro comando
- || executa o segundo comando se o primeiro falhar
- && não executa nada se o primeiro falha
- E o ; entre os comandos para ser seguencial
- Quando deseja atribuir uma variável ou manipular um comando em shell script precisa utilizar o $( ) para proteger o comando
- As variáveis aqui são mutáveis então possível reatribuir valores para as mesmas variáveis ao longo do script
- Existem variáveis de ambiente como $? Para retornar o retorno de um comando
- $HOME para retornar o diretório home
- Palavra read e reservada para entrada de dados

```shell
# $0 - Nome do programa
# $# - Quantidade de parametros
# $* - Todos os parametros inseridos
# $1-9  - Cada um dos pametros

if grep "$1" /etc/passwd > /dev/null
then 
     echo "Existe o usuario"
else 
    echo  "Nao existe o usuario"

fi 
#============================
read -p "Informe a quantidade maxima de processos:" MAX

#=====================================
echo $(cat /home/kenji/shell_script/shell/myTemp/alunos3.txt && hostname)
echo $(cat /home/kenji/shell_script/shell/myTemp/alunos3.txt  || cat /home/kenji/shell_script/shell/myTemp/alunos2.txt )

#==================
SEARCH=$(grep -i  $1  $DIRECTORY) 
echo "O aluno encontrado foi $SEARCH "
#======================


echo "=============="
echo "O script $0 recebeu $# parametros"
echo "Parametro \$-$1"
echo "Parametro \$-$2"
echo "Parametro \$-$3"
echo "Todos os pametros recebidos $* "


```


##

- Loops os comandos de loop no shell script são for,while,until
- While e for são os loops clássicos encontrados em muitas linguagens
- Until diferencia, porque e útil quando desejamos testar a rotina enquanto for a condição falso, inverso do while, que sua rotina fica rodando enquanto for verdadeira
- Para redirecionamento de saída usamos >  ou >>
- Diferença entre > ou >> e que com apenas um maior eu crio arquivo, mas não gero append, ou seja o conteúdo vai ficar sendo sobrescrito
- Com >> o conteúdo do arquivo fica gerando append
- Exemplo abaixo estou redirecionando a saída para o buraco negro do linux /dev/null e útil porque não desejo que a saída seja printada no monitor
- Podemos usar redirecionamento de saida para criar logs, exemplo abaixo.
- Também e possível redirecionar a saída e  printar na tela, para isso e usado o comando tee

``` shell


until ps axu| grep firefox| grep -v grep > /dev/null
do 
	echo Iniciei o firefox
	sleep 2

done
echo Firefox iniciado
echo "PID $(pgrep firefox)"


#====================================

LOG="/home/kenji/shell_script/shell/log-internt.txt"

echo "$(date) Inicio do script" >>$LOG


echo "Inicio do script" | tee -a $LOG

```
##

- As funções em shell podem ser iniciadas com a palavra function ou ser omissas essa palavra
- Para iniciar uma função e apenas chamada de um comando simples
- As leituras de parâmetros para as funções são as mesmas que um arquivo shell
- Como em outras linguagues que tem suporte a função, em shell e o mesmo principio é utilizado para reaproveitamento de código, melhor manutenção e organização do arquivo
- Com a palavra local as variáveis declaradas no escopo da função só pode ser lida na função, se não for declarado local, variável  se torna global e todos podem ler é manipular
- 

``` shell
# $0 - Nome do programa
# $# - Quantidade de parametros
# $* - Todos os parametros inseridos
# $1-9  - Cada um dos pametros


sum(){
	local SUM=$(expr $1 + $2)
	echo "Resultado da soma e $SUM"

}


sum 10 20


```



