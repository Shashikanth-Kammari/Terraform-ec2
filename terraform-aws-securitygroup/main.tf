resource "aws_security_group" "allow_tls" {
  name        = local.sg_name_final
  description = var.sg_discription
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = "allow_tls"
  }
}