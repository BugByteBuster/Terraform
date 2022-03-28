variable "aws_region" {
    description = "Region for aws resource"
    type = string
    default = "us-east-1"
}

variable "owner" {
    description = "Name of the owner"
    type = string
    default = "Hr"
}

variable "environment" {
    description = "Name of the environment"
    type = string
    default = "Stage"
  
}

variable "vpc_name" {
    description = "Name of the VPC"
    type = string
    default = "vpc-1"
}

variable "vpc_azs" {
    description = "List of aws azs"
    type = list(string)
    default = [ "us-east-1a", "us-east-1b" ]
}

variable "vpc_cidr" {
    description = "CIDR range for the VPC"
    type = string
    default = "10.0.0.0/16"
  
}

variable "public_subnets" {
    description = "List of publci subents"
    type = list(string)
    default = [ "10.0.101.0/24", "10.0.102.0/24" ]
}

variable "private_subnets" {
  description = "List of private subnets"
  type = list(string)
  default = [ "10.0.1.0/24", "10.0.2.0/24" ]
}

variable "database_subnets" {
    description = "List of Database private subents"
    type = list(string)
    default = [ "10.0.151.0/24", "10.0.152.0/24" ]
}