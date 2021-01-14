#!/bin/bash -x

#Triplet Combination

declare -A Store2
IS_HEADS=1
IS_TAILS=0
count1=0
count2=0
count3=0
count4=0
count5=0
count6=0
count7=0
count8=0
read -p "Enter a num for no of times to loop run: " n
for (( i=1; i<=$n; i++ ))
do
	FlipCoin1=$(( RANDOM%2 ))
	FlipCoin2=$(( RANDOM%2 ))
   FlipCoin3=$(( RANDOM%2 ))	
	if [[ $FlipCoin1 -eq $IS_HEADS && $FlipCoin2 -eq $IS_HEADS && $FlipCoin3 -eq $IS_HEADS ]]
	then
		((count1++))
		Store2[$i]="HHH"
	elif [[ $FlipCoin1 -eq $IS_HEADS && $FlipCoin2 -eq $IS_HEADS && $FlipCOin3 -eq $IS_TAILS ]]
	then
		((count2++))
		Store2[$i]="HHT"
   elif [[ $FlipCoin1 -eq $IS_HEADS && $FlipCoin2 -eq $IS_TAILS && $FlipCoin3 -eq $IS_TAILS ]]
   then
      ((count3++))
      Store2[$i]="HTT"
   elif [[ $FlipCoin1 -eq $IS_TAILS && $FlipCoin2 -eq $IS_TAILS && $FlipCoin3 -eq $IS_HEADS ]]
   then
      ((count4++))
      Store2[$i]="TTH"
   elif [[ $FlipCoin1 -eq $IS_TAILS && $FlipCoin2 -eq $IS_HEADS && $FlipCoin3  -eq $IS_HEADS ]]
   then
      ((count5++))
      Store2[$i]="THH"
   elif [[ $FlipCoin1 -eq $IS_HEADS && $FlipCoin2 -eq $IS_TAILS && $FlipCoin3 -eq $IS_HEADS ]]
   then
      ((count6++))
      Store2[$i]="HTH"

   elif [[ $FlipCoin1 -eq $IS_TAILS && $FlipCoin2 -eq $IS_TAILS && $FlipCoin3 -eq $IS_TAILS ]]
   then
      ((count7++))
      Store2[$i]="TTT"
   elif [[ $FlipCoin1 -eq $IS_TAILS && $FlipCoin2 -eq $IS_HEADS && $FlipCoin3 -eq $IS_TAILS ]]
   then
      ((count8++))
      Store2[$i]="THT"


	fi
done
echo ${Store2[@]}
	
Data1=$(( ($count1/$n)*100 ))
Data2=$(( ($count2/$n)*100 ))
Data3=$(( ($count3/$n)*100 ))
Data4=$(( ($count4/$n)*100 ))
Data5=$(( ($count5/$n)*100 ))
Data6=$(( ($count6/$n)*100 ))
Data7=$(( ($count7/$n)*100 ))
Data8=$(( ($count8/$n)*100 ))
declare -A Percentage3
count=0
Percentage3[1]=$Data1
Percentage3[2]=$Data2
Percentage3[3]=$Data3
Percentage3[4]=$Data4
Percentage3[5]=$Data5
Percentage3[6]=$Data6
Percentage3[7]=$Data7
Percentage3[8]=$Data8
echo ${Percentage3[@]}
