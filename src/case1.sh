#!/bin/bash

# Ejemplo de case, determina si la distro está soportada

shopt -s nocasematch

DISTRO=$1
VAR2=$2
VAR3=$3

# Las funciones se deben definir antes de ser llamadas
mensaje ()
{

CONTADOR=1

for i in $@
do
	echo "Distribución $i soportada"
	let "CONTADOR=$CONTADOR+1"
done

}

case "$DISTRO" in
	Ubuntu)
		mensaje $DISTRO $VAR2 $VAR3
	;;
	Centos)
		mensaje $DISTRO $VAR2 $VAR3
	;;
	Fedora)
		mensaje $DISTRO $VAR2 $VAR3
	;;
	*)
		echo "Distro no soportada"
esac

