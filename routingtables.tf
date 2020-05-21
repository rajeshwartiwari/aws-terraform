resource "aws_default_route_table" "default_rt" {
  default_route_table_id = "${aws_vpc.vpc.default_route_table_id}"

  tags = {
    Name = "private-router"
  }
}


resource "aws_route_table" "rtb_public" {
  vpc_id = "${aws_vpc.vpc.id}"

  route {
     cidr_block = "${var.destinationCIDRblock}"
      gateway_id = "${aws_internet_gateway.igw.id}"
  }

  tags ={
    "Environment" = "${var.environment_tag}"
    "Name" ="public-router"
  }
}
