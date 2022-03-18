provider "aws" {
  region = "us-east-1"
  secret_key = "ItGgUUKtJo6GjHTn94bNy+cWAj"
  access_key = "AKIAVOZEPIR4WY"
}

resource "aws_instance" "tf-instance" {
    ami = "ami-0c02fb55956c7d316"
    instance_type = "t2.micro"
}