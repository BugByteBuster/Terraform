terraform {
  required_version = "~> 1.1.7" // right most versions. allows 1.1.x and denies 1.x
  required_providers {
    aws = {
      version = "~> 3.0"
      source  = "hashicorp/aws" // downloads from registry.terraform.io/hashicorp/aws
    }
  }
}

provider "aws" {
  region = "us-east-1"
  /* if we have multiple profiles in 
    $HOME/.aws/credentials then specify which credentials 
    to use by specifying the 'profile' block
    */
}