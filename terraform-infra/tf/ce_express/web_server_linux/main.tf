data "terraform_remote_state" "vpc" {
  backend = "local"

  config = {
    path = "../networking/terraform.tfstate"
  }
}

module "web_server" {
  source = "../../modules/aws_asg_server"

  name                      = var.name
  vpc_id                    = data.terraform_remote_state.vpc.outputs.vpc_id
  app_private_subnets       = data.terraform_remote_state.vpc.outputs.private_subnets
  volume_size               = var.volume_size
  tags                      = var.tags
  region                    = var.region
  ami                       = "ami-082b5a644766e0e6f"
  user_data                 = data.template_file.webserver_launch_configuration_user_data.rendered
}

data "template_file" "webserver_launch_configuration_user_data" {
  template = file("${path.module}/template/user_data.tpl")
}

module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "onica-pivate-s3-bucket"
  acl    = "private"

  versioning = {
    enabled = true
  }
  lifecycle_rule = [
    {
      id      = "log"
      enabled = true
      prefix  = "log/"

      tags = {
        rule      = "log"
        autoclean = "true"
      }

      transition = [
        {
          days          = 30
          storage_class = "ONEZONE_IA"
          }, {
          days          = 60
          storage_class = "GLACIER"
        }
      ]

      expiration = {
        days = 90
      }

      noncurrent_version_expiration = {
        days = 30
      }
    }
  ]

}