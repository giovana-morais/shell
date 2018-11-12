#!/bin/bash
# Checa arquivos vazios
echo "Digite o diretório a ser pesquisado";

read DIRETORIO;
CONT=0;

for filename in $DIRETORIO/*.wav; do
    echo "Checando arquivo $filename"
    FILESIZE=$(stat -c%s $filename);

    if [[ $FILESIZE -eq 0 ]]; then
        echo "$filename tem 0 bytes"
        echo "$(basename $filename)" >> out.txt
    else
        echo "$filename tem $FILESIZE bytes"
    fi

done
