#!/bin/bash
permisos_directorio()
{
lista_directorios=$(ls $1)
for directorio in $lista_directorios
do
if [ -d "$1/$directorio" ]
then
chmod o-rwx $1/$directorio/* > /dev/null 2>&1
permisos_directorio $1/$directorio $((1+$2))
fi
done
}
permisos_directorio $1 1