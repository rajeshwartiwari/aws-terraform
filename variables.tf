# variables.tf
variable "access_key" {
     default = ""
}
variable "secret_key" {
     default = ""
}
variable "region" {
     default = "eu-west-2"
}
variable "availabilityZone" {
     default = "eu-west-2a"
}
variable "availabilityZone1" {
     default = "eu-west-2b"
}
variable "instanceTenancy" {
    default = "default"
}
variable "dnsSupport" {
    default = true
}
variable "dnsHostNames" {
    default = true
}
variable "vpcCIDRblock" {
    default = "10.0.0.0/16"
}
variable "subnetCIDRblock" {
    default = "10.0.1.0/24"
}

variable "subnetPrivateCIDRblock" {
    default = "10.0.2.0/24"
}

variable "destinationCIDRblock" {
    default = "0.0.0.0/0"
}
variable "ingressCIDRblock" {
   
    default = [ "0.0.0.0/0" ]
}
variable "egressCIDRblock" {
    default = [ "0.0.0.0/0" ]
}
variable "mapPublicIP" {
    default = true
}

variable "public_key_path" {
  description = "Public key path"
  default = "~/.ssh/id_rsa.pub"
}
variable "instance_ami" {
  description = "AMI for aws EC2 instance"
  default = "ami-08597db1de3302851"
}
variable "instance_type" {
  description = "type for aws EC2 instance"
  default = "t2.micro"
}


variable "instance_ami1" {
  description = "AMI for aws EC2 instance"
  default = "ami-0664f33a476ecedc6"
}
variable "instance_type1" {
  description = "type for aws EC2 instance"
  default = "t2.medium"
}
variable "environment_tag" {
  description = "Environment tag"
  default = "PegaKMSDemo"
}
# end of variables.tf