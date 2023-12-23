#!/bin/bash

aws ec2 run-instances --image-id ami-03265a0778a880afb --count 1 --instance-type t2.micro --security-group-ids sg-0c954e6aa75dd655c

Image_id = $(ami-03265a0778a880afb)
SG_id = $(sg-0c954e6aa75dd655c)
Instances = ["web","Redis","Mysql"]

for i in instances[@]
do
  if [ i == "Mysql"] || [i == "redis"]
   then
        instance-type = "t3.small"
     else
        instance-type = "t2.micro"
   fi 
   aws ec2 run-instances --image-id ami-03265a0778a880afb --count 1 --instance-type t2.micro --security-group-ids sg-0c954e6aa75dd655c
done       