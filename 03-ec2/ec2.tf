provider "aws" {
    region      = "us-east-1"
}

resource "aws_instance" "demo" {
  ami                       = "ami-0cb7d8dc2b12a2c0d"
  instance_type             = "t2.micro"
  vpc_security_group_ids    = [aws_security_group.allow_KONDAssh.id]


  tags     = {
    Name   = "EC2-Terraform-Instance"
  }
}
output "public_ip" {
    value  = aws_instance.demo.public_ip
}

# Creates security group
resource "aws_security_group" "allow_KONDa_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"

  ingress {
    description      = "SSH from INTERNET"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
}

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_konda_ssg_sg"
  }
}