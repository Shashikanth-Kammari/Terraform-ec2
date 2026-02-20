resource "aws_vpc_peering_connection" "foo" {
  count = var.is_peering_required ? 1 : 0
  vpc_id        = aws_vpc.main.id   #request VPC
  peer_vpc_id   = var.accepter_vpc_id == "" ? "default-vpc" : var.accepter_vpc_id  #target VPC
  
}