#!/bin/bash

age=25

if [ $age -ge 18 ]
then
    if [ $age -ge 21 ]
    then
        echo "Eligible for driving and voting"
    fi
fi
