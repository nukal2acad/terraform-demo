resource "aws_instance" "ec2" {
  for_each = var.ec2-instances
  ami           = var.ec2-ami
  instance_type = each.value
 # count = var.no-of-vms
#attaching security group
vpc_security_group_ids = [ aws_security_group.allow_tls.id ]
 
  tags = {
    #for only 
    #Name = "${var.vm-name}-${count.index}"
    Name = "Narik-vm1-${each.key}"
  }
}