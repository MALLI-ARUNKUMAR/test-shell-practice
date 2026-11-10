#!/bin/bash
user_id=$(id -u)
if [ user_id -ne 0 ] ; then
    echo "You are not root user. Please run the script as root user"
    exit 1
fi

echo "installing nginx"
dnf install nginx -y