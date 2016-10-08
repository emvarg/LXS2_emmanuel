#!/bin/bash

ERRORLOG="output.err"
# La salida estandar de error estara redireccionada al archivo if-then-sh.err

if cp archivo1.txt archivo1.txt.bck 2> $ERRORLOG
then
	echo "El archivo1.txt fue correctamente respaldado"
else
	echo "El archivo1.txt no pudo ser respaldado, verifique el log :$ERRORLOG"
fi
