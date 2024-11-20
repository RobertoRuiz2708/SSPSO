@echo off
rem create.bat
echo Creando archivo "Texto.txt" con el texto "Hola Mundo"
echo Hola Mundo > Texto.txt
echo.
echo Mostrando el contenido del archivo "Texto.txt":
type Texto.txt
echo.
echo Creando subdirectorio "Respaldo"
mkdir Respaldo
echo Copiando "Texto.txt" al subdirectorio "Respaldo"
copy Texto.txt Respaldo\
echo.
echo Listando el contenido del subdirectorio "Respaldo":
dir Respaldo
echo.
echo Eliminando el archivo "Texto.txt" del subdirectorio "Respaldo"
del Respaldo\Texto.txt
echo Eliminando el subdirectorio "Respaldo"
rmdir Respaldo
echo.
echo Operaciones completadas.
	