module "ec2instance" {
  source        = "../../modules/ec2_variables"
  instance_type = "t2.nano"
}