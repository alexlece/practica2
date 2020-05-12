#!/bin/bash
# 735061,Adell Pina,Alejandro ,M,4,A 
# 746207,Garcia Rodriguez,Felix,M,4,A 

Bin=$(find $HOME -maxdepth 1  -type d -name "*bin???") #numero directorios con nombre *bin???
date=""
directorio=""

if [-z $Bin ] #true si string vacio
then
	directorio=$(mktemp -d $HOME/binXXX)   #crea directorio temporal
	echo "Se ha creado el directorio $dBin"
else
	for i in $Bin
		if [-z $directorio] # para asignar el primero
		then
			directorio=$i
			date= $( stat -c %Y $i ) #Saca fecha ultima modificacion

		elif [$date -gt $( stat -c %Y $i )]	 #Si la fecha es posterior
			date= $( stat -c %Y $i)
			directorio=$i
		fi
	done
fi

copias=0
echo "Directorio destino de copia: $directorio"

for archivo in ./*
do
	if [ -x "$archivo" ] && [ -f "$archivo" ] #si es archivo ejecutable
	then
		cp "$archivo" "$directorio"
		let "copias+=1"
		echo "$archivo ha sido copiado a $directorio"
	fi
done

if [ $copias == 0 ]
 then
     echo "No se ha copiado ningun archivo"
 else
     echo "Se han copiado $copias archivos"
 fi
