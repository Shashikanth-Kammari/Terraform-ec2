terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.54"
    }
}
}


#provide authentication here


provider "aws" {
    region = "us-east-1"
}