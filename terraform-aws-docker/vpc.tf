resource "aws_vpc" "buddy_main" {
  cidr_block       = "10.36.1.0/24"
  instance_tenancy = "default"

  tags = {
    Name = "main",
    pic  = "dedy"
  }
}

resource "aws_vpc" "buddy_apps" {
  cidr_block       = "10.36.2.0/24"
  instance_tenancy = "default"

  tags = {
    Name = "main",
    pic  = "dedy"
  }
}
