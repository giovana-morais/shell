#!/bin/bash
# corta audio de 15 segundos para x segundos

echo "Digite a pasta com os .wav"
read WAV_FOLDER;

echo "Digite o tamanho do áudio desejado"
read FIM;

echo "Digite o diretório de destino"
read NEW_DIR

i=0;
mkdir $(pwd)$NEW_DIR;
echo "A pasta de destino eh: $(pwd)$NEW_DIR"

# lista apenas os arquivos de áudio
for filename in $WAV_FOLDER/*.wav; do
    echo "Processando "$filename;
    # $(basename $filename) retorna apenas o nome do arquivo sem o caminho absoluto
    ffmpeg -i $filename -ss 00 -to $FIM -c copy $NEW_DIR/$(basename $filename)
    echo "Arquivo salvo em "$NEW_DIR$(basename $filename)
done



