resource "aws_instance" "ec2" {
  instance_type = var.instance_type
  ami           = var.ami
  subnet_id     = var.public_subnet_ec2
  tags = {
    Name = var.ec2instance_name
  }
}
