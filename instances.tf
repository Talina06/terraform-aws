data "aws_ami" "target_ami" {
  most_recent = true

  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }
}

resource "aws_instance" "db" {
   ami  = "${data.aws_ami.target_ami.id}"
   instance_type = "t2.micro"
   key_name = "${aws_key_pair.private_subnet.id}"
   subnet_id = "${aws_subnet.private.id}"
   vpc_security_group_ids = ["${aws_security_group.private.id}"]
   source_dest_check = false

  tags {
    Name = "Database instance in private subnet"
  }
}

resource "aws_instance" "bastion" {
   ami  = "${data.aws_ami.target_ami.id}"
   instance_type = "t2.micro"
   key_name = "${aws_key_pair.public_subnet.id}"
   subnet_id = "${aws_subnet.public.id}"
   vpc_security_group_ids = ["${aws_security_group.public.id}"]
   associate_public_ip_address = true
   source_dest_check = false

  tags {
    Name = "A bastion instance in the public subnet"
  }
}
