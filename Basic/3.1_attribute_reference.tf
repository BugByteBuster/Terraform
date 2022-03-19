terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.6.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  secret_key = ""
  access_key = ""
}

resource "aws_eip" "tf-eip" {
    vpc = true
  
}

resource "aws_security_group" "tf-sec-grp" {
      name = ""
      ingress {
          from_port = 8080
          to_port = 8080
          protocol = "tcp"
          cidr_blocks = ["${aws_eip.tf-eip.public_ip}/32"]
      }
}
