provider "aws" {
  version = "~> 2.0"
  region     = var.region
}



 terraform {
   backend "s3" {
     bucket = "cp-terraform-bootstrap-terraform-state"
     key    = "default-infrastructure"
     region = "eu-west-2"
   }
 }

#esource "aws_s3_bucket" "terraform_state" {
# bucket = "cp-terraform-bootstrap-terraform-state"
#
# versioning {
#   enabled = true
# }
#