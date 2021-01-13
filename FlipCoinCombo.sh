#!/bin/bash -x

FlipCoin=$(( RANDOM%2 ))
IS_HEAD=1
if [ $FlipCoin -eq $IS_HEAD ]
then
	echo "Head"
else 
	echo "Tails"
fi
