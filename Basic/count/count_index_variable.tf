resource "aws_iam_user" "tf-iam-user" {
    name = var.elb_names[count.index]
    count = 3
    path = "/system/"
  
}

variable "elb_names" {
    type = list
    default = ["dev-loadbalancer","prod-loadbalancer","stage-loadbalancer"]
}