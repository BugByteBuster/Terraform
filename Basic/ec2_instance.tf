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
  secret_key = "ItGgUUKHTn94bNy+cWAj"
  access_key = "AKIG7PIR4WY"
}

resource "aws_instance" "tf-instance" {
    ami = "ami-0c02fb55956c7d316"
    instance_type = "t2.micro"
}