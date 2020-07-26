output "masterip" {
  value = "${aws_instance.master.public_ip}"
}
