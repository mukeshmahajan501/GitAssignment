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

declare  -A storeInDictionary
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


function storeInDictionary () {
	dailyEmpWage=$1;
	totalEmpWage=$2;
	value="$dailyEmpWage-$totalEmpWage"
	storeInDictionary[$totalWorkingDays]="{storeInDictionary[$totalWorkingDays]} $value"
}
while [[ $totalEmpHrs -le $maxHrInMonth && $totalWorkingDays -lt $noOfWorkingDays ]]
do
	
	((totalWorkingDays++))
	
	empHrs="$(getWorkingHrs)"
	dailyEmpWage=$(($empHrs*$empRatePerHr))
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
	echo "total working days:"$totaWorkingDays
	totalEmpWage=$(($totalEmpWage+$dailyEmpWage))
	storeInDictionary $dailyEmpWage $totalEmpWage
done
	 #totalEmpWage=$(($totalEmpHrs*$empRatePerHr))

#echo "total Employee Wage is: "$totalEmpWage

 echo ${storeInDictionary[@]}
