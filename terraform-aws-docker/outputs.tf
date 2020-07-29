output "buddy" {
  value = "${aws_instance.buddy.public_dns}"

}

output "openvpn" {
  value = "${aws_instance.openvpn-server.public_dns}"
}

output "ca" {
  value = "${aws_instance.ca-server.public_dns}"
}
