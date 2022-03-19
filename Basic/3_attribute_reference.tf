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

resource "aws_instance" "tf-instance" {
    ami = "ami-0c02fb55956c7d316"
    instance_type = "t2.micro"
  
}

resource "aws_eip" "tf-eip" {
    vpc = true
  
}

resource "aws_eip_association" "tf-association" {
    instance_id = aws_instance.tf-instance.id
    allocation_id = aws_eip.tf-eip.id
  
}