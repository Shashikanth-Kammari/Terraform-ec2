variable "instance_names" {
  type = list
  default = ["db", "backend", "frontend"]
}

variable "image_id" {
    type  = string
    default = "ami-005e54dee72cc1d00"
    description = "RHEL - 9 AMI ID"  #optional
}

variable "instance_type" {
    default = "t2.micro"
}

variable "common_tags" {
    default = {
        Project = "expense"
        Environment = "Dev"
        terraform = "true"
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