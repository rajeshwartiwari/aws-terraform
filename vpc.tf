# vpc.tf 
# Create VPC/Subnet/Security Group/Network ACL

#VPC
resource "aws_vpc" "vpc" {
 
  cidr_block = "${var.vpcCIDRblock}"
  instance_tenancy     = var.instanceTenancy 
  enable_dns_support   = var.dnsSupport 
  enable_dns_hostnames = var.dnsHostNames
  tags= {
    "Environment" = "${var.environment_tag}"
     "Name"="cppegapoc"
  }
}
