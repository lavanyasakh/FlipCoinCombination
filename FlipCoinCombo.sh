#!/bin/bash -x

#Doublet Combination

declare -A Store1
IS_HEADS=1
IS_TAILS=0
count1=0
count2=0
count3=0
count4=0
read -p "Enter a num for no of times to loop run: " n1
for (( i=1; i<=$n1; i++ ))
do
	FlipCoin1=$(( RANDOM%2 ))
	FlipCoin2=$(( RANDOM%2 ))
	if [[ $FlipCoin1 -eq $IS_HEADS && $FlipCoin2 -eq $IS_HEADS ]]
	then
		((count1++))
		Store1[$i]="HH"
	elif [[ $FlipCoin1 -eq $IS_HEADS && $FlipCoin2 -eq $IS_TAILS ]]
	then
		((count2++))
		Store1[$i]="HT"
   elif [[ $FlipCoin1 -eq $IS_TAILS && $FlipCoin2 -eq $IS_HEADS ]]
   then
      ((count3++))
      Store1[$i]="TH"
   elif [[ $FlipCoin1 -eq $IS_TAILS && $FlipCoin2 -eq $IS_TAILS ]]
   then
      ((count4++))
      Store1[$i]="HT"
	fi
done
echo ${Store1[@]}
	
Data1=$(( ($count1/$n)*100 ))
Data2=$(( ($count2/$n)*100 ))
Data3=$(( ($count3/$n)*100 ))
Data4=$(( ($count4/$n)*100 ))

declare -A Percentage2
count=0
Percentage2[count]=$Data1
Percentage2[count++]=$Data2
Percentage2[count++]=$Data3
Percentage2[count++]=$Data4
echo ${Percentage1[@]}
