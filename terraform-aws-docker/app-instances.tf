/* Setup our aws provider */
provider "aws" {
  profile = "default"
  region  = "ap-southeast-1"
}
resource "aws_instance" "master" {
  ami             = "ami-063e3af9d2cc7fe94"
  instance_type   = "t2.medium"
  security_groups = ["open-http"]
  key_name        = "dedy-mac-air"
  connection {
    host        = self.public_ip
    user        = "ubuntu"
    private_key = "${file("/Users/md712idb/.ssh/dedy-mac-air.pem")}"
  }
  provisioner "file" {
    source      = "proj/buddy.sh"
    destination = "/tmp/buddy.sh"
  }


  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/buddy.sh",
      "cd /tmp",
      "echo '23' | ./buddy.sh",

    ]
  }
  tags = {
    Name = "buddy-master"
  }
}
