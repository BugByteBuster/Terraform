variable "elb_name" {
    type = string
    default = "tf-elb"  
}

variable "elb_az" {
  type = list
  default = ["us-east-1a","us-east-1b"]
}

variable "elb_timeout" {
    type = number
    default = 400
}

variable "instance_type" {
  type = map
  default = {
    us-east-1 = "t2.micro"
    us-west-1 = "t2.nano"
    ap-south-1 = "t2.medium"
  }
  
}

variable "instancetype" {
  type = list
  default = ["t2.nano","t2.micro","t2.medium"]
  
}