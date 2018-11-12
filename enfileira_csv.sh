# enfileira amostras no rabbit partir de um arquivo csv

i=0;
echo "Digite 1 para o enfileiramento no servidor e 0 para o enfileiramento local"
read opcao

echo "Digite o nome do arquivo com os id's"
read arquivo


if [ $opcao -eq 1 ]; then
    endereco="http://35.199.71.176:8081/api/classificacao/enfileirar/"
else
    endereco="http://localhost:8081/api/classificacao/enfileirar/"
fi

echo "Enfileirando em $endereco..."

while IFS="" read -r p || [ -n "$p" ]
do
    echo 'Amostra '$i' enfileirada'
    if [ $i == 'id_amostra' ]; then
        continue
    else
        let i=i+1;
            curl -X GET $endereco$p
    fi
done < $arquivo
