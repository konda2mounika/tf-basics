resource "aws_instance" "demo1" {
  ami                       = "data.aws_ami.my_ami.id"
  instance_type             = "t2.micro"
  vpc_security_group_ids    = [var.sg]

  tags     = {
    Name   = "EC2-Terraform"
  }
}
 

variable "sg" {}

output "public_ip" {
    value =  aws_instance.demo1.public_ip
}