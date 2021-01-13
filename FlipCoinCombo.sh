#!/bin/bash -x
IS_HEAD=1

count1=0
count2=0
declare -A Store
declare -A Percentage
read -p "Enter a num: " n
for (( i=1; i<=$n; i++ ))
do
   FlipCoin=$(( RANDOM%2 ))
   if [ $FlipCoin -eq $IS_HEAD ]
   then
	  ((count1++))
	   Store[$i]=$FlipCoin
   else 
	  ((count2++))
	  Store[$i]=$FlipCoin
   fi
done
Data1=$(( ($count1/$n)*100 ))
Data2=$(( ($count2/$n)*100 ))
Percentage[Heads]=$Data1
Percentage[Tails]=$Data2
echo $Data1
echo ${Percentage[@]}
echo ${Store[@]}
