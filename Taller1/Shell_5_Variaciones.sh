
n=20
r=3
resta=$(($n-$r))
factorialnumerador=1
factorialdenominador=1

while [ $n -gt 1 ]
	do
		let factorialnumerador=$factorialnumerador*$n
		let n=($n-1)
	done

while [ $(resta) -gt 1 ]
	do
		let factorialdenominador=$factorialdenominador*$resta
		let resta=$resta-1
	done
  
 variaciones=$(($factorialnumerador/$factorialdenominador))
 
 echo $variaciones

#la complejidad es de O(2n-r)
