# terraform aws Ec2 module 

## Inputs 

ami_id (optional): ami_id is optional, default value is "ami-005e54dee72cc1d00"

security_group_id (optional): list of security group ids, default is sg-007863465765734

instance0type(optonal): default value is from variables is  t2.micro

## 0utputs

Public ip ; outputs the public IP of the instance created
Private ip ; outputs the private IP of the instance created
Instnce id: outputs the instance id of the instance created 