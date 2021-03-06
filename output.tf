output "vpc_id" {
  value = "${aws_vpc.vpc.id}"
}
output "public_subnets" {
  value = ["${aws_subnet.subnet_public.id}"]
}
output "public_route_table_ids" {
  value = ["${aws_route_table.rtb_public.id}"]
}
output "public_instance_ip1" {
  value = ["${aws_instance.publicInstance1.public_ip}"]
}

output "public_instance_ip2" {
  value = ["${aws_instance.publicInstance2.public_ip}"]
}