resource "aws_instance" "myec2" {
  ami               = data.aws_ami.amz-linux.id
  for_each          = toset(data.aws_availability_zones.myaz.names) //we get az's as list, but for_each accepts only sets or map. so we are using toset
  availability_zone = each.key
  instance_type     = var.aws_instancetype
  security_groups   = [aws_security_group.vpc_ssh.name, aws_security_group.vpc_web.name]
  key_name          = var.aws_keypair
  user_data         = file("${path.module}/app-install.sh")
  tags = {
    "Name" = "myec2-${each.key}"
  }
}