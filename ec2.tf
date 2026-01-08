resource "aws_instance" "ec2-t3" {
  ami           = var.ec2-ami
  instance_type = var.vm-size
  count = var.no-of-vms
#attaching security group
vpc_security_group_ids = [ aws_security_group.allow_tls.id ]
 
  tags = {
    Name = "${var.vm-name}-${count.index}"
  }
}