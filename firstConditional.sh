#!/bin/bash



# =================================

# precisa colocar um parametro para script funcionar

#==================
echo  "================================"
# dev/null e o buraco negro do linux, estou pegando saida do comando e jogando neste buraco
if grep "$1" /etc/passwd > /dev/null
then 
     echo "Existe o usuario"
else 
    echo  "Nao existe o usuario"

fi 


HAVEUSER=$(grep "$1"  /etc/passwd )

# cuidado com os espacos dentro do conchelte
if [ -n "$HAVEUSER" ]
then 
	echo "1-Usuario existe"
else
       echo  "2-Nao existe usuario"	

fi


