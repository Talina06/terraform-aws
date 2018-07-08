resource "tls_private_key" "first" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "private_subnet" {
  key_name   = "${var.key_name}"
  public_key = "${tls_private_key.first.public_key_openssh}"
}

resource "tls_private_key" "second" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "public_subnet" {
  key_name   = "${var.key_name}"
  public_key = "${tls_private_key.second.public_key_openssh}"
}
