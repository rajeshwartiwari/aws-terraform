resource "aws_subnet" "subnet_public" {
  vpc_id = "${aws_vpc.vpc.id}"
  cidr_block = "${var.subnetCIDRblock}"
  map_public_ip_on_launch = "true"
  availability_zone = "${var.availabilityZone}"
  tags ={
    "Environment" = "${var.environment_tag}"
    "Name"="cppegapoc-public-1"
  }
}


resource "aws_subnet" "subnet_private" {
  vpc_id = "${aws_vpc.vpc.id}"
  cidr_block = "${var.subnetPrivateCIDRblock}"
 // map_public_ip_on_launch = "true"
  availability_zone = "${var.availabilityZone1}"
  tags ={
    "Environment" = "${var.environment_tag}"
    "Name"="cppegapoc-private-1"
  }
}



resource "aws_route_table_association" "rta_subnet_private" {
  subnet_id      = "${aws_subnet.subnet_private.id}"
  route_table_id= "${aws_vpc.vpc.default_route_table_id}"
  
}


resource "aws_route_table_association" "rta_subnet_public" {
  subnet_id      = "${aws_subnet.subnet_public.id}"
  route_table_id = "${aws_route_table.rtb_public.id}"
}
