resource "aws_security_group" "allow_tls" {
  name        = local.sg_name_final
  description = var.sg_discription
  vpc_id      = var.vpc_id

  tags = {
    Name = "allow_tls"
  }
}