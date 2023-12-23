#!/bin/bash

Images_id=ami-03265a0778a880afb
SG_id=sg-0c954e6aa75dd655c
Instances=("web","Redis","Mysql")

for i in "${instances[@]}"
do  
    echo "instance is: $i"
  if [ $i == "Mysql" ] || [ $i == "Redis" ]
   then
        instance_type = "t3.small"
     else
        instance_type = "t2.micro"
   fi 

   aws ec2 run-instances --image-id $Image_id --count 1 --instance_type $instance_type --security-group-ids $SG_id

done       