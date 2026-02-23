resource "aws_instance" "shashi" {
  count = length (var.instance_names)
  ami = var.image_id
  vpc_security_group_ids = [aws_security_group.Allow_SSH.id]
  instance_type = var.instance_names[count.index] == "db" ? "t3.small" : "t3.micro"
  tags = merge(
    var.common_tags,
    {
        Name = var.instance_names[count.index]
        module = var.instance_names[count.index]
    }
  )
}