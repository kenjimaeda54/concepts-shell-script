#!/bin/bash


echo "==================================="
echo "Crie um Script que após executado solicite dois valores como entrada. Esses
valores devem ser somados e o resultado exibido para o usuário"
read -p "Digite um valor: " valor1
read -p "Digite outro valor: " valor2
echo "O resultado da soma é: " $(expr $valor1 + $valor2)

