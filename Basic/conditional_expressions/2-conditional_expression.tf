resource "aws_instance" "dev_instance" {
    ami = ""
    instance_type = ""
    count = var.dev_r_prod == "dev" ? 1 : 0
  
}

resource "aws_instance" "prod_instance" {
    ami = ""
    instance_type = ""
    count = var.dev_r_prod == "prod" ? 1 : 0
  
}


