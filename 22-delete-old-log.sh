#!/bin/bash

log_folder="/home/ec2-user/app-log"
log_file="$log_folder/$0.log"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"
N="\e[0m"

delete_the_file=$(find $log_folder -type f  -mtime +14) 

while IFS= read -r line; 
do
    echo "delete_the_files $line" 
    rm -f $delete_the_file  
done <<< "$delete_the_file" 