module "ec2-test" {
    source = "./terraform_aws_ec2"
    instance_type = "t3.small"
    tags = {
        Name = "Module-test"
        terraform = "true"
    }
}