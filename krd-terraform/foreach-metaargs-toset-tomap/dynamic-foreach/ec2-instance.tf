resource "aws_instance" "myec2" {
  ami               = data.aws_ami.amz-linux.id
  for_each          = toset(keys({ for az, type in data.aws_ec2_instance_type_offerings.supported_instance_types_v3 : az => type.instance_types if length(type.instance_types) != 0 }))
  availability_zone = each.key
  instance_type     = "t3.micro"
  security_groups   = ["aws_security_group.vpc_ssh.name, aws_security_group.vpc_web.name"]
  user_data         = file("${path.module}/app-install.sh")
  key_name          = "terraform-key"
  tags = {
    "Name" = "myec2-${each.key}"
  }

}