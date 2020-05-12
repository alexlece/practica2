#!/bin/bash
# Alejandro Adell Pina 735061
echo -n 'Introduzca el nombre de un directorio: '
read directorio
if [ -d "$directorio" ]
then
	ndir=$(find "$directorio" -type d | wc -l) #numero directorios el wc -l cuenta lineas
	ndirb=$((ndir - 1))
	nfich=$(find "$directorio" -type f | wc -l)
	echo "El numero de ficheros y directorios en $directorio es de $nfich y $ndirb, respectivamente"
else
	echo "$directorio no es un directorio"
fi
