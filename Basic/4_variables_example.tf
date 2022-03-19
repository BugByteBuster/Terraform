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

resource "aws_security_group" "tf-sec-grp" {
    name = "tf-sec-grp"
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = [var.vpn_ip]
    }

    ingress {
        from_port = 81
        to_port = 81
        protocol = "tcp"
        cidr_blocks = [var.vpn_ip]
    }

    ingress {
        from_port = 82
        to_port = 82
        protocol = "tcp"
        cidr_blocks = [var.vpn_ip]
    }

}
