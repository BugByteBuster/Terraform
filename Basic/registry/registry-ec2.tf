module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  for_each      = toset(["one", "two", "three"])
  name          = "instance-${each.key}"
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"
  key_name      = "ur_key"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}