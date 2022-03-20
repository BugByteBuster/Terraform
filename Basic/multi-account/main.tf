resource "aws_eip" "eip-accunt1" {
  vpc      = true
  provider = aws.account-1
}

resource "aws_eip" "rip-acccount2" {
  vpc      = true
  provider = aws.account-2
}