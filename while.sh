#!/bin/sh


# o : significa que vai ser sempre verdade. é a mesma coisa de um while (True)
#while :
#do
#    echo "Escreva algo, por favor (^C pra sair)"
#    read INPUT_STR
#    echo "Você escreveu: $INPUT_STR"
#done


# pra colocar uma condição no while é feito

#read INPUT_STR
#while [ "$INPUT_STR" != "tchau" ]
#do
#    echo "Digite alguma coisa (\"tchau\" pra sair)"
#    read INPUT_STR
#    echo "Você escreveu: $INPUT_STR"
#done

MY_FILE=hello.txt

while read f
do
    case $f in
        hello)          echo English        ;;
        howdy)          echo American       ;;
        gday)           echo Australian     ;;
        bonjour)        echo French         ;;
        "guten tag")    echo German         ;;
        *)              echo Unknown Language: $f
            ;;
    esac
done < $MY_FILE
