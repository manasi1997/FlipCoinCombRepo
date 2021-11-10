#!/bin/bash

isHead=0
isTail=1
isWin=0
headCount=0
tailCount=0
declare -A doubleDict
for (( i=1;i<=20;i++ ))
do
        random=$((RANDOM%2))
        if [ $random -eq $isHead ]
        then
                ((headCount++))
                doubleDict[head$headCount]="H"
        elif [ $random -eq $isTail ]
        then
                ((tailCount++))
                doubleDict[tail$tailCount]="T"
        fi
done

echo "dictionary is : "${coinDict[@]}

headPercent=`echo "scale=2; ( $headCount / 20 ) * 100" | bc`

doubleDict[0]=$headPercent

echo "Head percentage : "$headPercent

tailPercent=`echo "scale=2; ( $tailCount / 20 ) * 100" | bc`

doubleDict[1]=$tailPercent

echo "Tail percentage : "$tailPercent

isHH=0
isHT=0
isTH=0
isTT=0
for (( i=1;i<=20;i++ ))
do
        randomOne=$((RANDOM%2))
        randomTwo=$((RANDOM%2))
        if [ $randomOne -eq $isHead ] && [ $randomTwo -eq $isHead ]
        then
                ((isHH++))
                doubleDict[HH$isHH]="HH"
        elif [ $randomOne -eq $isTail ] && [ $randomTwo -eq $isTail ]
        then
                ((isTT++))
                doubleDict[TT$isTT]="TT"
        elif [ $randomOne -eq $isHead ] && [ $randomTwo -eq $isTail ]
        then
                ((isHT++))
                doubleDict[HT$isHT]="HT"
        elif [ $randomOne -eq $isTail ] && [ $randomTwo -eq $isHead ]
        then
                ((isTH++))
                doubleDict[TH$isTH]="TH"
        fi
done



HHPercent=`echo "scale=2; ( $isHH / 20 ) * 100" | bc`

doubleDict[2]=$HHPercent

echo "HH percentage : "$HHPercent

TTPercent=`echo "scale=2; ( $isTT / 20 ) * 100" | bc`

doubleDict[3]=$TTPercent
echo "TT percentage : "$TTPercent

HTPercent=`echo "scale=2; ( $isHT / 20 ) * 100" | bc`

doubleDict[4]=$HTPercent

echo "HT percentage : "$HTPercent

THPercent=`echo "scale=2; ( $isTH / 20 ) * 100" | bc`

doubleDict[5]=$THPercent

echo "TH percentage : "$THPercent




isHHH=0
isHHT=0
isHTH=0
isTHH=0
isTTT=0
isTTH=0
isTHT=0
isHTT=0
declare -A doubleDict
for (( i=1;i<=20;i++ ))
do
        randomOne=$((RANDOM%2))
        randomTwo=$((RANDOM%2))
        randomThree=$((RANDOM%2))
        if [ $randomOne -eq $isHead ] && [ $randomTwo -eq $isHead ] && [ $randomThree -eq $isHead ]
        then
                ((isHHH++))
                doubleDict[HHH$isHHH]="HHH"
        elif [ $randomOne -eq $isTail ] && [ $randomTwo -eq $isTail ] && [ $randomThree -eq $isHead ]
        then
                ((isTTH++))
                doubleDict[TTH$isTTH]="TTH"
        elif [ $randomOne -eq $isHead ] && [ $randomTwo -eq $isTail ] && [ $randomThree -eq $isHead ]
        then
                ((isHTH++))
                doubleDict[HTH$isHT]="HTH"
        elif [ $randomOne -eq $isTail ] && [ $randomTwo -eq $isHead ] && [ $randomThree -eq $isHead ]
        then
                ((isTHH++))
                doubleDict[THH$isTHH]="THH"
        elif [ $randomOne -eq $isHead ] && [ $randomTwo -eq $isHead ] && [ $randomThree -eq $isTail ]
        then
                ((isHHT++))
                doubleDict[HHT$isHHT]="HHT"
        elif [ $randomOne -eq $isHead ] && [ $randomTwo -eq $isTail ] && [ $randomThree -eq $isTail ]
        then
                ((isHTT++))
                doubleDict[HTT$isHTT]="HTT"
        elif [ $randomOne -eq $isTail ] && [ $randomTwo -eq $isHead ] && [ $randomThree -eq $isTail ]
        then
                ((isTHT++))
                doubleDict[THT$isTHT]="THT"
        elif [ $randomOne -eq $isTail ] && [ $randomTwo -eq $isTail ] && [ $randomThree -eq $isTail ]
        then
                ((isTTT++))
                doubleDict[TTT$isTTT]="TTT"
        fi
done



HHHPercent=`echo "scale=2; ( $isHHH / 20 ) * 100" | bc`

doubleDict[6]=$HHHPercent

echo "HHH percentage : "$HHHPercent

TTHPercent=`echo "scale=2; ( $isTTH / 20 ) * 100" | bc`

doubleDict[7]=$TTHPercent

echo "TTH percentage : "$TTHPercent

HTHPercent=`echo "scale=2; ( $isHTH / 20 ) * 100" | bc`

doubleDict[8]=$HTHPercent

echo "HTH percentage : "$HTHPercent

THHPercent=`echo "scale=2; ( $isTHH / 20 ) * 100" | bc`

doubleDict[9]=$THHPercent

echo "THH percentage : "$THHPercent

HHTPercent=`echo "scale=2; ( $isHHT / 20 ) * 100" | bc`

doubleDict[10]=$HHTPercent

echo "HHT percentage : "$HHTPercent

HTTPercent=`echo "scale=2; ( $isHTT / 20 ) * 100" | bc`

doubleDict[11]=$HTTPercent

echo "HTT percentage : "$HTTPercent

THTPercent=`echo "scale=2; ( $isTHT / 20 ) * 100" | bc`

doubleDict[12]=$THTPercent

echo "THT percentage : "$THTPercent

TTTPercent=`echo "scale=2; ( $isTTT / 20 ) * 100" | bc`

doubleDict[13]=$TTTPercent

echo "TTT percentage : "$TTTPercent



echo "The dictionary is : "${doubleDict[@]}
