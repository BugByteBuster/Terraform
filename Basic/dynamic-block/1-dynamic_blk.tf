resource "aws_security_group" "sec_grp-1" {
  name = "sample-sg"
  dynamic "ingress" {
    for_each = var.sg_ports
    content {
      to_port     = ingress.value
      from_port   = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]

    }
  }
  dynamic "egress" {
    for_each = var.sg_ports
    content {
      to_port     = egress.value
      from_port   = egress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}