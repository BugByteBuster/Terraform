resource "aws_instance" "my-ec2-1" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"
  user_data     = file("${path.module}/app-install.sh")
  tags = {
    "name" = "my-ec2-2"
  }
}