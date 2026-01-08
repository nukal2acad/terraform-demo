variable "ec2-ami" {
  type = string
  description = "variable for ami"
  default = "ami-068c0051b15cdb816"
}

variable "vm-size" {
  type = string
  description = "variable for vm size"
  default = "t2.micro"
}

variable "vm-name" {
  type = string
  default = "Narik-vm1"
}

variable "no-of-vms" {
  type = number
}
#variable section for map data type
variable "ec2-instances" {
  type = map(string)
  default = {
    "web" = "t3.micro"
    "db" = "t2.micro"
  }
}