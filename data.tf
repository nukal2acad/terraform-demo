data "aws_vpc" "first" {
  id = "vpc-07eede624774fec02"
}

#creating security group
resource "aws_security_group" "allow_tls" {
  name        = "Kiran_sg_group_Boa"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = data.aws_vpc.first.id

  tags = {
    Name = "Kiran_sg_group_Boa"
  }
}