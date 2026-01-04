resource "aws_security_group" "Allow_SSH" {
    name = "Allow_SSH"
    description = "allowing the SSH Session for the instance"

    ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    }


    tags = {
        Name = "Allow_SSH"
        CreatedBy = "Shashikanth"
    }
  
}