#!/bin/bash
busca_directorio()
{
lista_directorios=$(ls $1)
for directorio in $lista_directorios
do
if [ -d "$1/$directorio" ]
then
ls $1/$directorio/*.$2 > /dev/null 2>&1
if [ $? -eq 0 ]
then
ls -1 $1/$directorio/*.$2
fi
busca_directorio $1/$directorio $2 $((1+$3))
fi
done
}
busca_directorio $1 $2 1