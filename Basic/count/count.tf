resource "aws_instance" "name" {
    ami = "ami-0c02fb55956c7d316"
    count = 5
    instance_type = "t2.micro"
  
}