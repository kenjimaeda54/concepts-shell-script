#!/bin/bash


echo
case "$1" in
        #estou testando com expressao numerica	
	[A-Z])
		echo "Opcao escolhida e caracter maisculo"
		;;
	[a-z])
	        echo "Opcao escolhida e caracter minusculo"
	        ;;
	[0-9])
	       echo  "Opcao e caracter numerico"
                ;;
	*)
               echo  "Opcao e caracter especial"

esac	       

