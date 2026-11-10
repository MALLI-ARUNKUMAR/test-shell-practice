#!/bin/bash

set -e
#!/bin/bash

user_id=$(id -u)
LOGS_FOLDER="/var/log/shell-scripts"
LOGS_FILE="/var/log/shell-scripts/$0.log"

if [ $user_id -ne 0 ] ; then
    echo "you are not root user. Please run the script as root user" | tee -a $LOGS_FILE
    exit 1
fi
mkdir -p $LOGS_FOLDER
VALIDATE () {
    if [ $1 -ne 0 ]; then
        echo " $2 ....FAILURE " | tee -a $LOGS_FILE
        exit 1
    else
        echo "$2 ....SUCCESS" | tee -a $LOGS_FILE
    fi 
}

for package in $@
do
    dnf list installed $package &>> $LOGS_FILE
    if [ $? -ne 0 ]; then
        echo "$package is not installed, installing now"
        dnf install $package -y &>> $LOGS_FILE
       # VALIDATE $? " $package installation"
    else
        echo "$package is already installed skipping"
    fi
done