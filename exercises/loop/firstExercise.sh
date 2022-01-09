#!/bin/bash


echo "Desenvolver um algoritmo que efetue a soma de todos os números ímpares que são múltiplos de 
três e que se encontram no conjunto dos números de 1 até 10".

for i in $(seq 1 10); 
do
  if [ $(($i % 3)) -eq 0 ] && [ $(($i % 2)) -ne 0 ]; 
  then
    echo $i
  fi
done | awk '{soma += $1} END {print "Valor da soma de 1 ate 10 sendo multiplos de 3 e impares e: "soma}'