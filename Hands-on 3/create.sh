#!/bin/bash
echo "Creando el archivo de texto 'Texto'"
echo "Hola Mundo" > Texto
echo
echo "Mostrando el contenido de 'Texto':"
cat Texto
echo
echo "Creando directorio 'Respaldo'"
mkdir Respaldo
echo "moviendo 'Texto' al directorio 'Respaldo'"
mv Texto Respaldo/
echo
echo "Listando el contenido del directorio 'Respaldo':"
ls Respaldo
echo
echo "Eliminando 'Texto' del directorio 'Respaldo'"
rm Respaldo/Texto
echo "Eliminando el directorio 'Respaldo'"
rmdir Respaldo
echo
echo "Todo fue hecho correctamente"
