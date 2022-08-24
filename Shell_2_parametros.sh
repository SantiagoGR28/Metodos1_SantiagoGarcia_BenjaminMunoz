function help(){
	echo "Debes ingresar tres parametros"
}

if ! [ $# -eq 3 ]; then
	echo "son tres"
	help
	exit 1
else 
echo "corriendo programa"
fi
