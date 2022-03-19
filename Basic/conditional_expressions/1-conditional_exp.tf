variable "isTest" {
    type = bool
    default = true  
}

resource "aws_instance" "instance" {
    name = var.isTest == true ? dev_instance : prod_instance
    ami = "ami-0c02fb55956c7d316"
    instance_type = "t2.micro"
  
}