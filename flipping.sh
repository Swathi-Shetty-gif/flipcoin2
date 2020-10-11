#!/bin/bash -x
read -p "number of times coin to be flipped" num
head=1
tail=0
headcount=0
tailcount=0
for ((i=0;i<$num;i++))
do
	randomcheck=$((RANDOM%2))
	case $randomcheck in
 
	$head)
		((headcount++))
		;;
	$tail)
		((tailcount++))	
		;;
esac
done
echo "count of head is " $headcount
echo "count of tail is " $tailcount
declare -A dictionary
dictionary[((head))]=$headcount
dictionary[((tail))]=$tailcount
echo ${dictionary[@]}

resulthead=$(($headcount*100))
resultheadper=$(($resulthead/$num))

resulttail=$(($tailcount*100))
resulttailper=$(($resulttail/$num))

echo "percentage of head " $resultheadper
echo "percentage of tail " $resulttailper