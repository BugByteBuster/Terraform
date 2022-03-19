elb_name = "tf-elb"
elb_az = ["us-east-1a","us-east-1c"]
elb_timeout = "900"
instance_type = {
  ap-south-1 = "t2.nano"
  us-east-1 = "t2.micro"
  us-west-1 = "t2.medium"
}
instancetype = ["t2.micro","t2.nano","t2.medium"]