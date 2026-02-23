output "instance_ids" {
  value = aws_instance.shashi[*].id
}

