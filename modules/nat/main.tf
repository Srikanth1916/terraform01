##Creation of the eip
resource "aws_eip" "eip" {
  vpc = true
}


## Creation of the nat gateway
resource "aws_nat_gateway" "nat-gw" {
  allocation_id = aws_eip.eip.id
  subnet_id     = var.public_subnet_nat

  tags = {
    Name = var.nat_gw_name
  }
}
