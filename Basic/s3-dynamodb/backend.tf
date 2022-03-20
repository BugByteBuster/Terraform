terraform {
  backend "s3" {
    bucket         = "tf-bucket-ezpedvi"
    key            = "./terrafrom.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-s3-state-lock"
  }
}
