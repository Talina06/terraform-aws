# terraform-aws
Creating a basic VPC on AWS using Terraform.


## Create a VPC with the following resources:
- A VPC: Virtual Private Cloud.
- 1 Private Subnet: 
- 1 Public Subnet:
- An internet gateway: Allows communication between the VPC and the internet.
- A NAT gateway: Allows instances in the private subnet to connect to the internet, but not vice-versa.
- Route Table: Defines rules regarding where the packets should go. 1 Route table: for private subnet for which all connections
will go through the NAT gateway, and 1 for the public subnet for which all the traffic will go via the internet gateway.
- Route Table Associations: Associates the subnets to the route tables.
- Elastic IP (EIP): Associated with the NAT gateway, used by private instances to be reachable via the internet. Static IP.
- CIDR notations: 10.10.0.0/16 means that the first 16 bits are constant and allows the next 16 bits to be variable, giving us (2^16-2) IPs. (as 10.10.0.1 is the Min IP and 10.10.255.254 is the Max IP)

