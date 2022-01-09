

# ====================================

# Para funcionar precisa de parametros

# ====================================

echo "Desenvolver  um  algoritmo  que  leia  a  altura  de  5 numeros interios.  Este  programa  deverá  calcular  e  
mostrar  o menor e maior numero"
BIG=0
SMALL=732555

for i in $*
do     
    if [ $BIG -lt $i ]
    then
         BIG=$i
    elif [ $SMALL -gt $i ]
    then     
         SMALL=$i     
    fi
done 	
echo "$BIG  e o maior altura"
echo "$SMALL  e a menor altura"


