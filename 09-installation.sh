#!/bin/bash
user_id=$(id -u)
if [ user_id -ne 0 ] ; then
    echo "You are not root user. Please run the script as root user"
else 
    echo "You are root user. Proceeding with the installation of nginx"   
    dnf install nginx -y
fi    