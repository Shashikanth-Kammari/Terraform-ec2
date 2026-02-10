variable "image_id" {
    type  = string
    default = "ami-005e54dee72cc1d00"
    description = "RHEL - 9 AMI ID"  #optional
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "sg_ids" {
    default = [aws_security_group.Allow_SSH.id]
}

variable "tags" {
    default = {
        Project = "expense"
        Environment = "Dev"
        Module = "db"
        Name = "db"
    }
}

variable "Sg_name" {
    default = "Allow_SSH"
}

variable "Sg_description" {
    default = "allowing the SSH Session"
}

variable "ssh_port" {
    default = 22
}

variable "ssh_Protocal" {
    default = "tcp"
}

variable "allowed_cidr" {
    type=list(string)
    default = ["0.0.0.0/0"]
}
variable "vpc_security_group_ids" {
  type = list
  default = ["sg-007863465765734"]
}