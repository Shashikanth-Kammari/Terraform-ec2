resource "aws_instance" "jenkins" {
  instance_type = "t3.micro"
  ami           = "ami-0d9f6f413453de9a6"
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  user_data = file("jenkins.sh")
  tags = {
    Name = "jenkins"
  }

}

resource "aws_security_group" "ec2_sg" {
  name        = "allow_ssh"

  ingress {
    description = "SSH"

    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"

    cidr_blocks = ["0.0.0.0/0"]
  }

    ingress {
    description = "SSH"

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
    Name = "Allow-SSH"
  }
}