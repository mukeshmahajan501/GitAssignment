#!/bin/bash -x

randomNo=$((RANDOM%2))

if [ $randomNo -eq 1 ]
then
        echo "employee is present"
else
        echo "employee is not present"
fi
