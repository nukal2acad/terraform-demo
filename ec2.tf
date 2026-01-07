resource "aws_instance" "ec2-t3" {
  ami           = var.ec2-ami
  instance_type = var.vm-size

  tags = {
    Name = var.vm-name
  }
}