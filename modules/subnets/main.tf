##creation of public subnet
resource "aws_subnet" "public-subnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.public_subnet

  tags = {
    Name = var.public_subnet_name
  }
}

##Creation of private subnet
resource "aws_subnet" "private-subnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.private_subnet

  tags = {
    Name = var.private_subnet_name
  }
}

