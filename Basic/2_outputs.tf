resource "aws_eip" "tf-eip" {
  vpc = true
}

output "eip" {
    value = aws_eip.tf-eip 
}

resource "aws_s3_bucket" "tfbucketvidy" {
  bucket = "tfbucketvidy"
}

output "s3_bucket" {
  value = aws_s3_bucket.tfbucketvidy
}