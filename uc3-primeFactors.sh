#! /bin/bash -x

read -p "Enter a number for prime factorisation", n
count=0
j=0
for(( i=1; i<=n ; i++ ))
do
	mod=$(($n%$i))
	if [[ $mod -eq 0 ]]
	then

		((j++))
		factors[$j]=$i
	fi
done
echo "${factors[@]}"

for i in ${factors[@]}
do
	isPrime=0
	
	for (( j=1; j<=i; j++ ))
	do
		mod=$(($i%$j))
		if [[ mod -eq 0 ]]
        	then
			((isPrime++))
		fi
	done
	if [[ isPrime -eq '2' ]]
	then
		((count++))
		primeFactors[$count]=$i
	fi
done
echo "${primeFactors[@]}"
