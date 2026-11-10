#!/bin/bash

user_id=$(id -u)
LOGS_FOLDER="/var/log/shell-scripts"
LOGS_FILE="/var/log/shell-scripts/$0.log"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"
N="\e[0m"


if [ $user_id -ne 0 ] ; then
    echo "you are not root user. Please run the script as root user" | tee -a $LOGS_FILE
    exit 1
fi
mkdir -p $LOGS_FOLDER
VALIDATE () {
    if [ $1 -ne 0 ]; then
        echo " $2 ....$R FAILURE " | tee -a $LOGS_FILE
        exit 1
    else
        echo "$2 ....$G SUCCESS" | tee -a $LOGS_FILE
    fi 
}

for package in $@
do
    dnf list installed $package &>> $LOGS_FILE
    if [ $? -ne 0 ]; then
        echo "$package is not $B installed, installing now"
        dnf install $package -y &>> $LOGS_FILE
        VALIDATE $? -e " $package $G installation $N"
    else
        echo  -e "$package is already $Y installed $N skipping"
    fi
done