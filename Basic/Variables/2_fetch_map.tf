resource "aws_instance" "tf-instance" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = var.instance_type["us-east-1"]

}