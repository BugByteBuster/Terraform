resource "aws_instance" "ec2-aws_instance" {
    ami = "ami-0c02fb55956c7d316"
    instance_type = "t2.micro"
}