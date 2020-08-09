/* Setup our aws provider */
provider "aws" {
  profile = "default"
  region  = "ap-southeast-1"
}
resource "aws_instance" "redis" {
  ami             = "ami-05f112c29645f0812"
  instance_type   = "t2.micro"
  security_groups = ["openvpn"]
  key_name        = "dedy-mac-air"
  tags = {
    Name = "Redis-test"
    pic  = "dedy"
  }
}

terraform {
  backend "s3" {
    bucket = "xendit-terraform-staging"
    key    = "aws/staging/redis/terraform.tfstate"
    region = "ap-southeast-1"
  }
}

output "redis" {
  value = "${aws_instance.redis.public_dns}"

}
