#!/bin/bash
user_id=$(id -u)

if [ $user_id -ne 0 ] ; then
    echo "You are not root user. Please run the script as root user"
    exit 1
fi

echo "installing nginx"
dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "Failed to install nginx"
    exit 1
else
    echo "nginx installed successfully"
fi        

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "Failed to install mysql"
    exit 1
else
    echo "mysql installed successfully"
fi  

dnf install nodejs -y

if [ $? -ne 0 ]; then
    echo "Failed to install nodejs"
    exit 1
else
    echo "nodejs installed successfully"
fi  
