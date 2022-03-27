module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.13.0"

  //Basic VPC
  name = "vpc-dev"
  cidr = "10.0.0.0/16"
  azs  = ["us-east-1a", "us-east-1b"]

  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]

  #Databse subnets
  create_database_subnet_group       = true
  create_database_subnet_route_table = true
  database_subnets                   = ["10.0.151.0/24", "10.0.152.0/24"]

  #NAT gateway for private subnet to internet access: Outbound
  enable_nat_gateway = true
  single_nat_gateway = true

  #VPC DNS
  enable_dns_support   = true
  enable_dns_hostnames = true

  #various tags
  public_subnet_tags = {
    "Name" = "public-subnets"
  }
  private_subnet_tags = {
    "Type" = "private-subnet"
  }
  database_subnet_tags = {
    "Type" = "database-subent"
  }
  tags = {
    "Owner" = "Vidyadhar"
  }
  vpc_tags = {
    "Type" = "vpc-dev"
  }
}