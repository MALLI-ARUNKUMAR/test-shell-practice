#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt  20 ] ; then
    echo "given number is greater than 20"
elif [ $NUMBER -eq 20 ] ;  then
    echo "given number is equal to 20"
else
    echo "given number is less than 20"


