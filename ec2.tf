provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "myec2" {
   ami 			= "ami-05b10e08d247fb927"
   instance_type 	= "t2.medium"
}

terraform {
 backend "s3" {
  bucket = "terraform-github-actions-store"
  key    = "github/terraform.tfstate"
  region = "us-east-1"
 }
}
