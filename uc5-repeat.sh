#! /bin/bash -x

ct=0
for (( i=1; i<100; i++ ))
do
	mod=$(($i%11))
	if [ $mod -eq 0 ]
	then
		repeatNums[ct++]=$i
	fi
done
echo "${repeatNums[@]}"
