##creation of the vpc script
resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidrblock
}

