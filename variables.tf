variable "profile" {
 	description = "AWS profile"
	default = "talina_aws"
}
variable "aws_region" {
 	description = "EC2 region for the VPC"
	default = "ap-south-1"
}
variable "public_subnet_cidr" {
	description = "Public Subnet CIDR"
	default = "10.10.0.0/24"
}
variable "private_subnet_cidr" {
	description = "Private Subnet CIDR"
	default = "10.10.0.0/24"
}

