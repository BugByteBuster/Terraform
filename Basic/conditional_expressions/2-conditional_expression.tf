resource "aws_instance" "dev_instance" {
    ami = "ami-0c02fb55956c7d316"
    instance_type = "t2.micro"
    count = var.dev_r_prod == "dev" ? 1 : 0
  
}

resource "aws_instance" "prod_instance" {
    ami = "ami-0c02fb55956c7d316"
    instance_type = "t2.micro"
    count = var.dev_r_prod == "prod" ? 1 : 0
  
}


