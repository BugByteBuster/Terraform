module "ec2_instance_bastion_host" {
  depends_on             = [module.vpc]
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "3.5.0"
  name                   = "${var.environment}-BastionHost"
  ami                    = data.aws_ami.amzlinux2.id
  key_name               = var.instance_keypair
  instance_type          = var.instance_type
  subnet_id              = module.vpc.public_subnets[0]
  vpc_security_group_ids = [module.ssh_http_sg.security_group_id]
  tags                   = local.common_tags
}

module "ec2_instance_private" {
  depends_on             = [module.vpc]
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "3.5.0"
  count                  = 2
  name                   = "${var.environment}-${count.index}-vm"
  ami                    = data.aws_ami.amzlinux2.id
  key_name               = var.instance_keypair
  instance_type          = var.instance_type
  user_data              = file("${path.module}/app1-install.sh")
  vpc_security_group_ids = [module.ssh_http_sg.security_group_id]
  tags                   = local.common_tags
  subnet_id              = module.vpc.private_subnets[count.index]
}
