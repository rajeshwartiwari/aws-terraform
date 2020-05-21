resource "aws_security_group" "sgpublic" {
  name = "sgpublic"
  vpc_id = "${aws_vpc.vpc.id}"

  # SSH access from the VPC
  ingress {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["${var.destinationCIDRblock}"]
  }

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["${var.destinationCIDRblock}"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["${var.destinationCIDRblock}"]
  }

  tags ={
    "Environment" = "${var.environment_tag}"
    "Name" ="sg-public"
  }
}



resource "aws_security_group" "sgprivate" {
  name = "sgprivate"
  vpc_id = "${aws_vpc.vpc.id}"

  # SSH access from the VPC
  ingress {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["${var.subnetCIDRblock}"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["${var.destinationCIDRblock}"]
  }

  tags ={
    "Environment" = "${var.environment_tag}"
    "Name" ="sg-private"
  }
}