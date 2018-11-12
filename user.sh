#!/bin/bash
echo "Qual seu nome"
read USER_NAME

echo "Oi $USER_NAME"
# tentar criar um arquivo com o comando
# touch "$USER_NAME_file"
# vai dar pau porque ele vai considerar $USER_NAME_file como uma única variável
# por isso é necessário usar as chaves
echo "Vou criar um arquivo pra você chamado ${USER_NAME}_file"
touch "${USER_NAME}_file"


