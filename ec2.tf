
resource "aws_iam_instance_profile" "kms_profile" {
  name = "kms_profile"
  role = "EC2KMSRole"
}

resource "aws_instance" "publicInstance1" {
  ami           = "${var.instance_ami}"
  instance_type = "${var.instance_type}"
  subnet_id = "${aws_subnet.subnet_public.id}"
  iam_instance_profile = "${aws_iam_instance_profile.kms_profile.name}"
  vpc_security_group_ids = ["${aws_security_group.sgpublic.id}"]
  key_name = "lbgamwlinux"

  tags ={
		"Environment" = "${var.environment_tag}"
    "Name" = "publicInstance1"
	}
}

rource "aws_instance" "publicInstance2" {
ami           = "${var.instance_ami1}"
instance_type = "${var.instance_type1}"
subnet_id = "${aws_subnet.subnet_public.id}"
iam_instance_profile = "${aws_iam_instance_profile.kms_profile.name}"
vpc_security_group_ids = ["${aws_security_group.sgpublic.id}"]
key_name = "lbgamwlinux"

ags ={
		"Environment" = "${var.environment_tag}"
    "Name" = "publicInstance2"
	}



resource "aws_instance" "privateInstance" {
  ami           = "${var.instance_ami}"
  instance_type = "${var.instance_type}"
  subnet_id = "${aws_subnet.subnet_private.id}"
  iam_instance_profile = "${aws_iam_instance_profile.kms_profile.name}"
  vpc_security_group_ids = ["${aws_security_group.sgprivate.id}"]
  key_name = "lbgamwlinux"

  tags ={
		"Environment" = "${var.environment_tag}"
	}
}