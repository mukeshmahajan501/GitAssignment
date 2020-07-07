#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
dailyEmpWage=0
randomNo=$((RANDOM%3))

if [ $randomNo -eq $isPartTime ]
then
        totalWorkHr=4
elif [ $randomNo -eq $isFullTime ]
then
        totalWorkHr=8;
else
	totalWorkHr=0

fi
dailyWage=$(($empRatePerHr*$totalWorkHr))
echo "daily wage of employee is: "$dailyWage
