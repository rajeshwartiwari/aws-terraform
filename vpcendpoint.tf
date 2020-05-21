
resource "aws_vpc_endpoint" "kms" {
  vpc_id            = "${aws_vpc.vpc.id}"
  service_name      = "com.amazonaws.${var.region}.kms"
  vpc_endpoint_type = "Interface"

  security_group_ids = [
    "${aws_security_group.sgprivate.id}","${aws_security_group.sgpublic.id}"
  ]

 subnet_ids          = ["${aws_subnet.subnet_private.id}", "${aws_subnet.subnet_public.id}"]
  private_dns_enabled = true

 tags = {
    "Environment" = "${var.environment_tag}"
  }
}
