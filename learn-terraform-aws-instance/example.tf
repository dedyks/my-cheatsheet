provider "aws" {
  profile = "default"
  region  = "ap-southeast-1"
}

resource "aws_instance" "example" {
  ami           = "ami-063e3af9d2cc7fe94"
  instance_type = "t2.micro"
}
