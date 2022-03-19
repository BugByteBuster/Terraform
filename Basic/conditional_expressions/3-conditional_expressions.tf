resource "aws_instance" "Dev" {
    ami = "ami-0c02fb55956c7d316"
    instance_type = "t2.micro"
    count = var.isTest == true ? 1 : 0
}

resource "aws_instance" "Prod" {
    ami = "ami-0c02fb55956c7d316"
    instance_type = "t2.micro"
    count = var.isTest == false ? 1 : 0
}