#!/bin/bash

user_id=$(id -u)

if [ $user_id -ne 0 ] ; then
    echo "you are not root user. Please run the script as root user"
    exit 1
fi

VALIDATE () {
    if [ $1 -ne 0 ]; then
        echo " $2 Failed to install "
        exit 1
    else
        echo "$2 installed successfully"
    fi 
}

dnf install nginx -y
VALIDATE $? "installing the nginx"

dnf install mysql -y
VALIDATE $? "installing the mysql"

dnf install nodejs -y
VALIDATE $? "installing the nodejs"