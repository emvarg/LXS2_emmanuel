#!/bin/bash

# Ejemplo de case, determina si la distro está soportada

shopt -s nocasematch

DISTRO=$1

# Las funciones se deben definir antes de ser llamadas
mensaje ()
{
echo "Distribución $DISTRO soportada"
}

case "$DISTRO" in
	Ubuntu)
		mensaje
	;;
	Centos)
		mensaje
	;;
	Fedora)
		mensaje
	;;
	*)
		echo "Distro no soportada"
esac



