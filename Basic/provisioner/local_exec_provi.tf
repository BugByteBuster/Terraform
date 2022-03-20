resource "aws_instance" "myec2" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"

  provisioner "local-exec" {
    command = "echo ${aws_instance.myec2.private_ip} >> private_ips.txt"
  }
}