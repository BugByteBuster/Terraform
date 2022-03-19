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