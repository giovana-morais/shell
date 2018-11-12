#!/bin/bash
# Script que lê uma lista de arquivos e copia todos os seus itens para uma pasta destino

echo "Digite o .csv com os arquivos"
read $filename

echo "Digite a pasta de origem"
read $src

echo "Digite a pasta de destino"
read $dest

file=$src$filename
mkdir $dest

while IFS= read -r line
do
    printf 'copying %s\n' "$line"
    cp $src$line $dest
done <"$file"

