##Creation of the route table
resource "aws_route_table" "public-routetable" {
  vpc_id = var.vpc_id

  route {
    cidr_block = var.public_routetable
    gateway_id = var.ig_id
  }
}

##Creation of private route table
resource "aws_route_table" "private-routetable" {
  vpc_id = var.vpc_id

  route {
    cidr_block = var.private_routetable
    gateway_id = var.nat_id
  }
}

## Creation of the route table associate for public
resource "aws_route_table_association" "public-route-asso" {
  subnet_id      = var.public_subnet_route
  route_table_id = aws_route_table.public-routetable.id
}


##Creation the route table association for private
resource "aws_route_table_association" "private-route-asso" {
  subnet_id      = var.private_subnet_route
  route_table_id = aws_route_table.private-routetable.id
}
