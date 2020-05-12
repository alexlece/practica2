#!/bin/bash
# Alejandro Adell Pina 735061
es_numero='[0-9]'
es_letra='[a-zA-Z]'
read -n 1 -p "Introduzca una tecla: " tecla #leer 1 caracter
if [[ $tecla = $es_numero ]]
then
	echo -e "\n$tecla es un numero"
elif [[ $tecla = $es_letra ]]
then
	echo -e "\n$tecla es una letra"
else
	echo -e "\n$tecla es un caracter especial"
fi
