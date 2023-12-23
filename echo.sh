#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
echo "ERROR:NOT A ROOT USER"
else
echo "root user"
fi

#yum install mysql -y

aws ec2 run-instances --image-id ami-03265a0778a880afb --count 1 --instance-type t2.micro --security-group-ids sg-0c954e6aa75dd655c