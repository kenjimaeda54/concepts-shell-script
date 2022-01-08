#!/bin/bash


# until e inverso do while enquanto for falso o until vai continuar a rotina

until ps axu| grep firefox| grep -v grep > /dev/null
do 
	echo Iniciei o firefox
	sleep 2

done
echo Firefox iniciado
echo "PID $(pgrep firefox)"





