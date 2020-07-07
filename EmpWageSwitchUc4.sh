#!/bin/bash -x
isPartTime=1
isFullTime=2
empHrs=0
empRatePerHr=20
dailyEmpWage=0
randomNo=$((RANDOM%3))

case $randomNo in
	$isPartTime)
			empHrs=4
			;;
	$isFullTime)
			empHrs=8
			;;
	*)
			empHrs=0
			;;
esac
dailyEmpWage=$(($empRatePerHr*$empHrs))
echo "daily wage of employee is: "$dailyEmpWage
