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

output "eip" {
    value = aws_eip.tf-eip 
}

resource "aws_s3_bucket" "tfbucketvidy" {
  bucket = "tfbucketvidy"
}

output "s3_bucket" {
  value = aws_s3_bucket.tfbucketvidy
}