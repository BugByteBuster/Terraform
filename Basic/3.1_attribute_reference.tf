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
  secret_key = "ItGgUUKtJo6GV8SadXps6cx3b9jHTn94bNy+cWAj"
  access_key = "AKIAVOZEWIATG7PIR4WY"
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