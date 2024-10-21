resource "aws_vpc_peering_connection" "peer" {
  vpc_id        = var.vpc1_id
  peer_vpc_id   = var.vpc2_id

  auto_accept = true
}

# Route Table for VPC 1
resource "aws_route" "vpc1_to_vpc2" {
  route_table_id            = aws_route_table.vpc1_private.id
  destination_cidr_block    = var.vpc2_cidr
  vpc_peering_connection_id  = aws_vpc_peering_connection.peer.id
}

# Route Table for VPC 2
resource "aws_route" "vpc2_to_vpc1" {
  route_table_id            = aws_route_table.vpc2_private.id
  destination_cidr_block    = var.vpc1_cidr
  vpc_peering_connection_id  = aws_vpc_peering_connection.peer.id
}

