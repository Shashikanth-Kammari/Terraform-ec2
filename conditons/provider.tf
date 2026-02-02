terraform {
  required_providers {
    aws = {
      source  = var.source
      version = "~> 6.0"
    }
  }
}