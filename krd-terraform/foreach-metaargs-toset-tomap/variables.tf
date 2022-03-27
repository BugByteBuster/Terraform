variable "aws_region" {
  description = "Region for creating AWS resources"
  type        = string
  default     = "us-east-1"
}

variable "aws_instancetype" {
  description = "ec2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "aws_keypair" {
  description = "instance SSH keypair name"
  type        = string
  default     = "terraform-ec2"
}

variable "aws_instancetype_list" {
  description = "List of EC2 instance types"
  type        = list(string)
  default     = ["t2.micro", "t2.small"]
}

variable "aws_instancetype_map" {
  description = "map for ec2 instance types"
  type        = map(string)
  default = {
    "dev"  = "t2.micro"
    "qa"   = "t2.small"
    "prod" = "t3.large"
  }
}