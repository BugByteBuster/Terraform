terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.6.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
<<<<<<< HEAD
    
=======
  secret_key = ""
  access_key = ""
>>>>>>> 744f817cc29ce600bf14196a2c942465bcc3a1de
}

resource "aws_elb" "tf-elb" {
  name               = var.elb_name
  availability_zones = var.elb_az

  listener {
    instance_port     = 8000
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  cross_zone_load_balancing   = true
  idle_timeout                = var.elb_timeout
  connection_draining         = true
  connection_draining_timeout = var.elb_timeout
}
