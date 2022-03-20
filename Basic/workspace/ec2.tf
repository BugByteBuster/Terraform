resource "aws_instance" "ec2-instance" {
  ami           = ""
  instance_type = lookup(var.instance_type, terraform.workspace)
}

variable "instance_type" {
  type = map(any)
  default = {
    dev   = "t2.nano"
    stage = "t2.micro"
    prod  = "t2.medium"
  }
}