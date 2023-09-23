provider "aws" {
    region      = "us-east-1"
}

resource "aws_instance" "demo" {
  ami                       = "ami-0cb7d8dc2b12a2c0d"
  instance_type             = "t2.micro"


  tags     = {
    Name   = "EC2-Terraform-Instance"
  }
}
