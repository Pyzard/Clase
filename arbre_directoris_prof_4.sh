#!/bin/bash
crea()
{
mkdir -p $1/$2{a..c}
if [ $3 -lt 4 ]
then
lista_directorios=$(ls $1)
for subdirectorio in $lista_directorios
do
crea $1/$subdirectorio $subdirectorio $(($3+1))
done
fi
}
echo -e "Directorio sobre el que quieres crear el arbol de directorios: "
read dir
crea $dir directorio_ 1