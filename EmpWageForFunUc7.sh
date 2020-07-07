#!/bin/bash -x
isPartTime=1
isFullTime=2
empHrs=0
empRatePerHr=20
dailyEmpWage=0
totalEmpWage=0
noOfWorkingDays=20
maxHrInMonth=100
totalEmpHrs=0
totalWorkingDays=0

function getWorkingHrs() {
	empCheck=$((RANDOM%3))
	
	case $empCheck in
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
	echo $empHrs
}
while [[ $totalEmpHrs -le $maxHrInMonth && $totalWorkingDays -lt $noOfWorkingDays ]]
do
	((totalWorkingDays++))
	
	empHrs="$(getWorkingHrs)"
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
	echo "total working days:"$totaWorkingDays
	totalEmpWage=$(($totalEmpWage+$dailyEmpWage))
done
	 totalEmpWage=$(($totalEmpHrs*$empRatePerHr))

echo "total Employee Wage is: "$totalEmpWage
