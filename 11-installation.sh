#!/bin/bash

USERID=$(id -u)
#echo "User ID is: $USERID"

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access"
    exit 1
fi 

dnf list installed git #just checking whether installed or not

if [ $? -ne 0]
then
    echo "Git is not installed, going to install"
    dnf install git -y #here installing
    if [ $? -ne 0 ]
    then
        echo "Git installation is not success..check it"
        exit 1
    else    
        echo "Git installation is success"
    fi
else    
    echo "Git is already installed, nothing to do"
fi

dnf list installed mysql

if [$? -ne 0 ]
then
    echo"MySQL is not installed..going to install"
    dnf install mysql -y
    if [ $? -ne 0 ]
    then 
        echo"MYSQL installation is failure. please check"
        exit 1
    else
        echo"MYSQL installation is success"
    fi
else
    echo"MYSQL is already installed..nothing to do"
fi    
        