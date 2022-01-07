#!/bin/bash


echo "Crie um script que receba do usuário 2 valores e em seguida exiba um menu 
para ele escolha uma das 4 principais operações aritmétricas (soma, 
subtração, multiplicação e divisão). Após isso a operação e o resultado são 
exibidos ao usuário."
echo ""
echo "Escolha uma operacao abaixo:"
echo "1 - Soma"
echo "2 - Subtracao"
echo "3 - Multiplicacao"
echo "4 - Divisao"
echo "Q - Sair"
echo  " "
read -p "Digite a operacao desejada: " USERCHOOSE

case $USERCHOOSE in 
      1)
          read -p "Digite o primeiro numero: " NUM1
          read -p "Digite o segundo numero: " NUM2
          echo "O resultado da soma eh: " $(($NUM1 + $NUM2))
          sleep 2
          ;;
      2)
          read -p "Digite o primeiro numero: " NUM1
          read -p "Digite o segundo numero: " NUM2
          echo "O resultado da subtracao eh: " $(($NUM1 - $NUM2))
          sleep 2
          ;;    
      3)
          read -p "Digite o primeiro numero: " NUM1
          read -p "Digite o segundo numero: " NUM2
          if [ $NUM1 -eq 0 -o $NUM2 -eq 0 ]
          then
              echo "Nao eh possivel realizar a operacao com 0"
          else
              echo "O resultado da multiplicacao eh: " $(($NUM1 * $NUM2))
          fi
          sleep 2
          ;;
      4)
          read -p "Digite o primeiro numero: " NUM1
          read -p "Digite o segundo numero: " NUM2
          if [ $NUM1 -eq 0 -o $NUM2 -eq 0 ]
          then
              echo "Nao eh possivel realizar a operacao com 0"
          elif ! [ $(expr $NUM1 % $NUM2 ) -eq 0 ]
          then
              echo "Operacao nao e exata"
              echo "Valor da divisao e $(expr  $NUM1 / $NUM2 )"
              echo "Resto da divisao e $(expr  $NUM1 % $NUM2 )"
          else
              echo "O resultado da divisao eh: " $(($NUM1 / $NUM2))
          fi 
          sleep 2   
          ;;    
      q)   
          echo "Saindo..."
          sleep 2
          exit
          ;;
      *)      
          echo "Operacao invalida"
          sleep 2
          exit
          ;;    
esac            