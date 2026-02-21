resource "aws_instance" "db" {
  ami = aws_ami_id_we_need_give
  vpc_security_group_ids = var.vpc_security_group_ids
  instance_type = var.instance_type
  tags = var.tags
}