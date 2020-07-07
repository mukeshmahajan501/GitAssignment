#!/bin/bash -x

empRatePerHr=20
dailyEmpWage=0
randomNo=$((RANDOM%2))

if [ $randomNo -eq 1 ]
then
        echo "employee is present"
        totalWorkHr=8
else
        totalWorkHr=0;
        echo "employee is absent"

fi
dailyWage=$(($empRatePerHr*$totalWorkHr))
echo "daily wage of employee is: "$dailyWage
