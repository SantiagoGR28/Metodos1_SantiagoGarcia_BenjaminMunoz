pass=0
function checkvalue(){
	value=$1
	if [ vale -eq 0 ] || [ value -eq 1 ]; then
  		pass=1
  	else
  		echo "vuelve a intentar"
  	fi
}

while [ $pass -eq 0 ]
do
	read valor
	checkvalue valor
done
