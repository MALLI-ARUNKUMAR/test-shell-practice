#!/bin/bash
num1=100
num2=100
sum=$(($num1 + $num2))
echo "sum is $sum"

##arrays##

fruits=("apple" "banana" "mango" "grapes")
echo "all fruits ${fruits[@]}"
echo "first fruit pojection ${fruits[0]}"
echo "second fruit pojection ${fruits[1]}"
echo "third fruit pojection ${fruits[2]}"
echo "fourth fruit pojection ${fruits[3]}"