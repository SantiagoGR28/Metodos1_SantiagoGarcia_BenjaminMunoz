function factorial(){
  n=$1
  while [ $n -gt 1 ]
	  do
		  let factorial=$factorial*$n
		  let n=$n-1
	  done
	  echo $factorial
  }
for i in {1..20}
  do 
  factorial i
  echo $factorial
  done
