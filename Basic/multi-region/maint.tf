resource "aws_eip" "eip-1" {
  vpc      = true
  provider = aws.east
}

resource "aws_eip" "eip-2" {
  vpc      = true
  provider = aws.west
}