#!/bin/bash
# Alejandro Adell Pina 735061

nBin=$(find $HOME -type d -name "*bin???" | wc -l) #numero directorios con nombre *bin???

if [ $nBin == 0 ]
then
	dBin=$(mktemp -d $HOME/binXXX)   #crea directorio temporal
	echo "Se ha creado el directorio $dBin"
else
	dBinB=$(ls -lht $HOME | grep bin[a-zA-Z0-9] | tail -n 1 |cut -d " " -f 12) #lht da formato y ordena por tiempo modificacion 
	dBin="$HOME/$dBinB"
fi

copias=0
echo "Directorio destino de copia: $dBin"

for archivo in ./*
do
	if [ -x "$archivo" -a -f "$archivo" ] #si es archivo ejecutable
	then
		cp "$archivo" "$dBin"
		let "copias+=1"
		echo "$archivo ha sido copiado a $dBin"
	fi
done

if [ $copias == 0 ]
 then
     echo "No se ha copiado ningun archivo"
 else
     echo "Se han copiado $copias archivos"
 fi
