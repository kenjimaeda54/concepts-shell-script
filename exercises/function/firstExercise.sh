#!/bin/bash

validateDate() {
  local VARDATE="$1"
  local VARSLIPTWOCARACTER=${VARDATE:0:2}
  local VARSLIPFOURCARACTER=${VARDATE:2:2}
  echo Este deveria ser o dia $VARSPLITMOUNTHORDAY
  echo Este deveria ser o mes $VARSLIPTDAYORMONTH
  if [ $VARSLIPTWOCARACTER -le 12 ]; then
    return 1
  elif [ $VARSLIPFOURCARACTER -le 12 ]; then
    return 0
  elif [ $VARSLIPTWOCARACTER -le 12 -a $VARSLIPFOURCARACTER -le 12 ]; then
    return 2
  else
    return 3
  fi
}

formatDate() {
  local VARDATE="$2"
  local VARSPLITMOUNTHORDAY=${VARDATE:0:2}
  local VARSLIPTDAYORMONTH=${VARDATE:2:2}
  local VARSLIPTYEAR=${VARDATE:4:4}
  case $1 in
  --help)
    echo "-f = Retorna 0 para data no formato BR,1 para formato US, 2 quando não é possível determinar e 3 formato invalidos"
    echo "-i = Inverte formato BR para US e US para BR. Inclui as Barras"
    echo "-b = Inclui Barras de Data. Exemplo: de 13081981 para 13/08/1981"
    echo "-e = Exibe a data em formato extenso. Exemplo de 13081918 para 13 de Agosto de 1981"
    ;;
  --i)
    local VARFORMAT="$VARSLIPTDAYORMONTH/$VARSPLITMOUNTHORDAY/$VARSLIPTYEAR"
    echo $VARFORMAT
    ;;
  --f)
    validateDate $2
    echo $?
    ;;
  --b)
    echo $VARSPLITMOUNTHORDAY/$VARSLIPTDAYORMONTH/$VARSLIPTYEAR
    ;;
  --e)
    echo "Implementar"
    ;;
  *)
    echo "Invalid month"
    ;;

  esac
}

formatDate $1 $2
