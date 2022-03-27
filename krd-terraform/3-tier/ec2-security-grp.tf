module "ssh_http_sg" {
  source              = "terraform-aws-modules/security-group/aws"
  version             = "4.9.0"
  name                = "ssh_http"
  description         = "security group with publci subnet to allow SSH to bastion host instance"
  vpc_id              = module.vpc.vpc_id
  tags                = local.common_tags
  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules       = ["ssh-tcp", "http-80-tcp"]
  egress_rules        = ["all-all"]

}
