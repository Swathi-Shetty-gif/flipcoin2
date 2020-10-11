#!/bin/bash -x
 for((i=0;i<2;i++))
do
	randomCheck=$((RANDOM%2))

done
if [ $randomCheck -eq 0 ]
then
	echo "flipped coin is head"
else
	echo "flipped coin is tail"
fi