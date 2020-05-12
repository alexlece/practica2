#!/bin/bash
# Alejandro Adell Pina 735061
for i in "$@"
do
	if [ -f "${i}" ] #es un fichero
	then
		more "${i}"
	else
		echo "${i} no es un fichero"
	fi
done
