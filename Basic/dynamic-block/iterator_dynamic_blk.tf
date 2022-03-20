resource "aws_security_group" "sec-grp-iterator" {
  name = "iterator-sg"
  dynamic "ingress" {
    for_each = var.sg_ports
    iterator = port
    content {
      to_port     = port.value
      from_port   = port.value
      cidr_blocks = ["0.0.0.0/0"]
      protocol    = "tcp"
    }
  }
}