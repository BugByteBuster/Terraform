resource "aws_instance" "tf-instance-2" {
  ami           = ""
  instance_type = var.instancetype[0]
}