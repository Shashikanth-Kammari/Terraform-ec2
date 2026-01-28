
resource "aws_instance" "db" {
    ami = var.image_id
    id = var.zone_id
    vpc_security_group_ids = [aws_security_group.Allow_SSH.id]
    instance_type = var.instance_name[count.index] == "frontend" ? var.instance_name:  var.instance_name[count.index].daws.online
    tags = {
      Name = var.tags
    }

}

