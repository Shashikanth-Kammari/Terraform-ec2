variable "project_name" {
  type = string
}


variable "environment" {
  type = string
  default = "dev"
}

variable "sg_name" {
  type = string
}

variable "sg_discription" {
  type = string
}

variable "vpc_id" {
  type = string
}