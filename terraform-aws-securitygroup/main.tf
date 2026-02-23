resource "aws_security_group" "allow_tls" {
  name        = local.sg_name_final
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = "allow_tls"
  }
}