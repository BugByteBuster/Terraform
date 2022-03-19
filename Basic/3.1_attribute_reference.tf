resource "aws_eip" "tf-eip3-1" {
  vpc = true

}

resource "aws_security_group" "tf-sec-grp3-1" {
  name = ""
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["${aws_eip.tf-eip.public_ip}/32"]
  }
}
