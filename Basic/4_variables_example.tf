resource "aws_security_group" "tf-sec-grp4" {
    name = "tf-sec-grp"
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = [var.vpn_ip]
    }

    ingress {
        from_port = 81
        to_port = 81
        protocol = "tcp"
        cidr_blocks = [var.vpn_ip]
    }

    ingress {
        from_port = 82
        to_port = 82
        protocol = "tcp"
        cidr_blocks = [var.vpn_ip]
    }

}
