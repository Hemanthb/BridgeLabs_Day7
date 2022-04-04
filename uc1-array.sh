#! /bin/bash -x

function findMin()
{
	arr=("$@")
	for i in "${arr[@]}";
	do
		temp=$i
		for j in "${arr[@]:1}":
		do
			if [[ $temp -gt $j ]];
			then
				temp=$j
			fi

		done
		break
	done
	echo "$temp"

}

function findMax()
{
        arr=("$@")
        for i in "${arr[@]}";
        do
                max=$i
                for j in "${arr[@]:1}":
                do
                        if [[ $max -lt $j ]];
                        then
                                max=$j
                        fi

                done
                break
        done
        echo "$max"

}

function sort()
{
	arr=("$@")
	arrLength=${#arr[@]}
	echo "$arrLength"
	for ((i=0; i<$arrLength; i++ ))
	do
		for (( j=i+1; j<$arrLength; j++ ))
		do
			if((${arr[$i]}>${arr[$j]}))
			then
				temp=${arr[$i]}
				arr[$i]=${arr[$j]}
				arr[$j]=$temp
			else
				continue
			fi
		done
	done
echo "${arr[@]}"
echo "${arr[arrlLength-2]}"
echo "${arr[1]}"
}


for ((i=0; i<10; i++ ))
do
	array[i]=$((RANDOM%900+100))
done
echo ${array[@]}

#findMin ${array[@]}
#echo "$temp"

#findMax ${array[@]}
#echo "$max"
sort ${array[@]}
