terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.6.0"
    }
  }
}

provider "aws" {
  alias   = "account-1"
  region  = "us-east-1"
  profile = "account1"
}

provider "aws" {
  alias   = "account-2"
  region  = "us-east-1"
  profile = "account2"
}