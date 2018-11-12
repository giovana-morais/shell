#!/bin/bash
echo "Loop 1"
for i in 1 2 3 4 5
do
    echo "number $i"
done

echo "Loop 2"
# o * acaba fazendo com o que for itere por arquivos e diretório da pasta
# atual
for i in hello 1 * 2 goodbye
do
    echo "i é $i"
done
