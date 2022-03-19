resource "aws_instance" "instance" {
    ami = "ami-0c02fb55956c7d316"
    instance_type = "t2.micro"
    tags = {
        Name = var.isTest == true ? "devinst" : "prodinst"
    }    
}