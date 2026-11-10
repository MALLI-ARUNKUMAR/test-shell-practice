#!/bin/bash
num1=100
num2=100
sum=$(($num1 + $num2))
echo "sum is $sum"

##arrays##

fruits=("apple" "banana" "mango" "grapes")
echo "all fruits ${fruits[@]}"
echo "first fruit projection ${fruits[0]}"
echo "second fruit projection ${fruits[1]}"
echo "third fruit projection ${fruits[2]}"
echo "fourth fruit projection ${fruits[3]}"