#!/bin/bash
echo "Ingrese la URL del video: "
read url
echo "1 - Descargar como video"
echo "2 - Descargar como audio"
read option
let choose=1
while [ $choose -eq 1 ]; do
	if [ $option -eq 1 ]; then
		echo "<<================ Buscando formatos disponibles ==================>>"
		youtube-dl --list-formats $url
		echo "<<================ Eleccion de formato =====================>>"
		echo "Elija el formato que desea descargar de la lista (format code) : "
		read format
		echo "<<================ Empezando a descargar ===================>>"
		youtube-dl --format $format $url
		if [ $? -ne 0 ]; then
			echo "La descarga finalizo exitosamente...!!!"
			echo "Disfrute de su video"
			echo "Software powered by nosotroslosfrikis.blogspot.com"
			echo "Under GNU Licence"
			$choose = 0 
		else
			echo "Ocurrio un error, ¿desea volver a intentar?"
			echo "1 - SI"
			echo "0 - NO"
			read choose
		fi
	fi
done
