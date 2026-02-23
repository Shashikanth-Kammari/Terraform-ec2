resource "aws_security_group" "allow_tls" {
  name        = "${var.project_name}-${var.environment}-${var.sg_name}"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = "allow_tls"
  }
}