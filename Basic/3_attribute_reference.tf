resource "aws_instance" "tf-instance3" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"

}

resource "aws_eip" "tf-eip3" {
  vpc = true

}

resource "aws_eip_association" "tf-association" {
  instance_id   = aws_instance.tf-instance.id
  allocation_id = aws_eip.tf-eip.id

}