#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
echo "ERROR:NOT A ROOT USER"
else
echo "root user"
fi

yum install mysql -y