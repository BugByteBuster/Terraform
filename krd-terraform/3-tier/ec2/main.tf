module "vpc_module" {
    source = "../vpc/"
}

module "sec_grp_bastion_private" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.9.0"

  name = "allow_http_ssh"
  description = "Security group to allow SSH and HTTP traffic from anywhere"
  vpc_id = module.vpc_module.vpc_id
  ingress_cidr_blocks = [ "0.0.0.0/0" ]
  ingress_rules = [ "http-80-tcp", "ssh-tcp" ]
  egress_rules = ["all-all"]
  tags = module.vpc_module.common_tags
}