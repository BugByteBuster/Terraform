locals {
    owner = var.owner
    environment = var.environment
    Name = "${local.owner}-${local.environment}-${var.vpc_name}"
    common_tags = {
        Owner = local.owner
        Environment = local.environment
        Name = local.Name
    }
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.13.0"

  //VPC level configs
  name = local.Name
  cidr = var.vpc_cidr
  azs = var.vpc_azs
  enable_dns_support = true
  enable_dns_hostnames = true

  //public subnet settings
  public_subnets = var.public_subnets
  public_subnet_tags = {
    "Type" = "Public Subnets"
  }

  //private subent settings
  private_subnets = var.private_subnets
  private_subnet_tags = {
    "Type" = "Private Subnets"
  }

  //database private subnet settings
  create_database_subnet_group = true
  database_subnets = var.database_subnets
  create_database_subnet_route_table = true
  database_subnet_tags = {
    "Type" = "Private Database subnets"
  }

  //nat & igw gateway settings
  enable_nat_gateway = true
  create_igw = true

  //common settings
  tags = local.common_tags
  vpc_tags = local.common_tags

}