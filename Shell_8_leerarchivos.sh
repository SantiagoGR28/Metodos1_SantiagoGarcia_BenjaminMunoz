nombre_archivo=""

array_rutas=()
while read line
do
array_rutas+=($LINE)
done < $nombre_archivo

echo ${array_rutas[2]}
