# Configure docker provider
#
# https://www.terraform.io/docs/providers/docker/index.html

provider "docker" {
  version = "2.7"
}
provider "aws" {
  version = "~> 3.0"
  region  = "ap-southeast-1"
}

resource "aws_instance" "openvpn_access_server" {
  ami           = "ami-0581e1a14abd56b73"
  instance_type = "t2.small"
  key_name      = "dedy-mac-air"
  security_groups = [
    "openvpn",
  ]
  tags = {
    Name = "openvpn-poc"
    pic  = "dedy"
  }
}

terraform {
  backend "s3" {
    bucket = "xendit-terraform-staging"
    key    = "aws/staging/openvpn/terraform.tfstate"
    region = "ap-southeast-1"
  }
}
