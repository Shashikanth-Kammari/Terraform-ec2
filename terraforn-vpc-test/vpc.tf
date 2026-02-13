module "vpc" {
    source = "./terraform-aws-vpc"
    Project_name = var.Project_name
    common_tags = var.common_tags
}