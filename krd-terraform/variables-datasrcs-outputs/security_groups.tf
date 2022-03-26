resource "aws_security_group" "vpc_ssh" {
  description = "Allow SSH connectivity"
  name        = "vpc_ssh"
  tags = {
    "Name" = "vpc_ssh"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "allow ssh from any location"
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "allow outbount to all ip, protocols and ports"
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }

}


resource "aws_security_group" "vpc_web" {
  description = "Allow web connectivity"
  name        = "vpc_web"
  tags = {
    "Name" = "vpc_web"
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "allow web traffic from any location"
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "allow web traffic from any location"
    from_port   = 443
    protocol    = "tcp"
    to_port     = 443
  }

}