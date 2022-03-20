terraform {
  backend "s3" {
    bucket = "tf-bucket-edvi"
    key    = "./terrafrom.tfstate"
    region = "us-east-1"
  }
}
