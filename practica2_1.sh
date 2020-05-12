#!/bin/bash
# Alejandro Adell Pina 735061
echo -n "Introduzca el nombre del fichero: "
read fichero
if [ -f "$fichero" ]
then
	permisos=$(stat -c '%A' "$fichero" | cut -c 2-4 )     # -c'%A' da formato legible y cut -c corta caracteres
	echo "Los permisos del archivo $fichero son: $permisos"
else
	echo "$fichero no existe"
fi
