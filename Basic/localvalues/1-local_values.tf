locals {
  common_tags = {
      Owner = "DevOps Team"
      Service = "Backend"
  }
}

resource "aws_instance" "instance-1" {
    ami = "ami-0c02fb55956c7d316"
    instance_type = "t2.micro"
    tags = local.common_tags
}

resource "aws_instance" "instance-2" {
    ami = "ami-0c02fb55956c7d316"
    instance_type = "t2.micro"
    tags = local.common_tags
}