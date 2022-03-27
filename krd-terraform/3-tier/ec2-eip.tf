resource "aws_eip" "bastion_eip" {
  depends_on = [module.ec2_instance_bastion_host]
  instance   = module.ec2_instance_bastion_host.id
  vpc        = true
  tags       = local.common_tags
}