resource "aws_instance" "demo1" {
  ami                       = "ami-0cb7d8dc2b12a2c0d"
  instance_type             = "t2.micro"
  vpc_security_group_ids    = [var.sg]

  tags     = {
    Name   = "EC2-Terraform"
  }
}
 

variable "sg" {}

