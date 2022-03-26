variable "aws_region" {
  description = "Region for creating AWS resources"
  type        = string
  default     = "us-east-1"
}

variable "aws_instancetype" {
  description = "ec2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "aws_keypair" {
  description = "instance SSH keypair name"
  type        = string
  default     = "terraform-ec2"
}