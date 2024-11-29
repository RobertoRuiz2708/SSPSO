#!/bin/bash
#-----------------------------------------------------------------------------------------------
# Esta funcion muestra el menu
mostrar_menu(){ 
	echo "Seleccione una opcion: "
	echo "1) Listar el contenido de un directorio"
	echo "2) Crear un archivo de texto"
	echo "3) Comparar dos archivos de texto"        
	echo "4) Salir"
	read -p "Opcion: " opcion
}
#------------------------------------------------------------------------------------------------
 # Esta funcion sirve para listar contenido de un directorio
listar_contenido(){
	read -p "Ingrese la ruta absoluta del directorio: " ruta
	if [ -d "$ruta" ]; then
		echo "Contenido de $ruta: "                           
		ls "$ruta"
	else
		echo "La ruta ingresada no es un directorio valido."
	fi
}

crear_archivo() {
	read -p "Ingrese el nombre del archivo a crear (incluya la extension): " nombre_archivo
	read -p "Ingrese el texto que desea almacenar: " texto
	echo "$texto" > "$nombre_archivo"
	echo "Archivo $nombre_archivo creado con exito."
}

#-------------------------------------------------------------------------------------------------
# Esta funcion sirve para comparar dos archivos de texto
comparar_archivos() {
	read -p "Ingrese la ruta del primer archivo: " archivo1
	read -p "Ingrese la ruta del segundo archivo: " archivo2

    	if [[ -f "$archivo1" && -f "$archivo2" ]]; then
        	resultado=$(diff "$archivo1" "$archivo2")
        	if [[ -z "$resultado" ]]; then
            		echo "Los archivos son idénticos."
        	else
            		echo "Los archivos son diferentes:"
            		echo "$resultado" # Muestra las diferencias
       		fi
    	else
        	if [[ ! -f "$archivo1" ]]; then
            		echo "El archivo '$archivo1' no existe."
        	fi
        	if [[ ! -f "$archivo2" ]]; then
            		echo "El archivo '$archivo2' no existe."
        	fi
    	fi
}

#----------------------------------------------------------------------------------------------------------
# Bucle menu
while true; do
	mostrar_menu
	case $opcion in
		1)
			listar_contenido
			;;
		2)
			crear_archivo
			;;
		3)
			comparar_archivos
			;;
		4)
			echo "saliendo del script."
			break
			;;
		*)
			echo "Opcion no valida. intente de nuevo."
	esac
	echo ""
	echo ""
	echo ""
done
	


