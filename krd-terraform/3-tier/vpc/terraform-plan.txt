ezpedvi@CA-00005136:/mnt/c/Users/ezpedvi/Desktop/Terraform/krd-terraform/3-tier/vpc$ terraform plan

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # module.vpc.aws_db_subnet_group.database[0] will be created
  + resource "aws_db_subnet_group" "database" {
      + arn         = (known after apply)
      + description = "Database subnet group for Hr-Stage-vpc-1"
      + id          = (known after apply)
      + name        = "hr-stage-vpc-1"
      + name_prefix = (known after apply)
      + subnet_ids  = (known after apply)
      + tags        = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
      + tags_all    = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
    }

  # module.vpc.aws_eip.nat[0] will be created
  + resource "aws_eip" "nat" {
      + allocation_id        = (known after apply)
      + association_id       = (known after apply)
      + carrier_ip           = (known after apply)
      + customer_owned_ip    = (known after apply)
      + domain               = (known after apply)
      + id                   = (known after apply)
      + instance             = (known after apply)
      + network_border_group = (known after apply)
      + network_interface    = (known after apply)
      + private_dns          = (known after apply)
      + private_ip           = (known after apply)
      + public_dns           = (known after apply)
      + public_ip            = (known after apply)
      + public_ipv4_pool     = (known after apply)
      + tags                 = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
      + tags_all             = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
      + vpc                  = true
    }

  # module.vpc.aws_eip.nat[1] will be created
  + resource "aws_eip" "nat" {
      + allocation_id        = (known after apply)
      + association_id       = (known after apply)
      + carrier_ip           = (known after apply)
      + customer_owned_ip    = (known after apply)
      + domain               = (known after apply)
      + id                   = (known after apply)
      + instance             = (known after apply)
      + network_border_group = (known after apply)
      + network_interface    = (known after apply)
      + private_dns          = (known after apply)
      + private_ip           = (known after apply)
      + public_dns           = (known after apply)
      + public_ip            = (known after apply)
      + public_ipv4_pool     = (known after apply)
      + tags                 = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
      + tags_all             = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
      + vpc                  = true
    }

  # module.vpc.aws_internet_gateway.this[0] will be created
  + resource "aws_internet_gateway" "this" {
      + arn      = (known after apply)
      + id       = (known after apply)
      + owner_id = (known after apply)
      + tags     = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
      + tags_all = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
      + vpc_id   = (known after apply)
    }

  # module.vpc.aws_nat_gateway.this[0] will be created
  + resource "aws_nat_gateway" "this" {
      + allocation_id        = (known after apply)
      + connectivity_type    = "public"
      + id                   = (known after apply)
      + network_interface_id = (known after apply)
      + private_ip           = (known after apply)
      + public_ip            = (known after apply)
      + subnet_id            = (known after apply)
      + tags                 = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
      + tags_all             = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
    }

  # module.vpc.aws_nat_gateway.this[1] will be created
  + resource "aws_nat_gateway" "this" {
      + allocation_id        = (known after apply)
      + connectivity_type    = "public"
      + id                   = (known after apply)
      + network_interface_id = (known after apply)
      + private_ip           = (known after apply)
      + public_ip            = (known after apply)
      + subnet_id            = (known after apply)
      + tags                 = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
      + tags_all             = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
    }

  # module.vpc.aws_route.private_nat_gateway[0] will be created
  + resource "aws_route" "private_nat_gateway" {
      + destination_cidr_block = "0.0.0.0/0"
      + id                     = (known after apply)
      + instance_id            = (known after apply)
      + instance_owner_id      = (known after apply)
      + nat_gateway_id         = (known after apply)
      + network_interface_id   = (known after apply)
      + origin                 = (known after apply)
      + route_table_id         = (known after apply)
      + state                  = (known after apply)

      + timeouts {
          + create = "5m"
        }
    }

  # module.vpc.aws_route.private_nat_gateway[1] will be created
  + resource "aws_route" "private_nat_gateway" {
      + destination_cidr_block = "0.0.0.0/0"
      + id                     = (known after apply)
      + instance_id            = (known after apply)
      + instance_owner_id      = (known after apply)
      + nat_gateway_id         = (known after apply)
      + network_interface_id   = (known after apply)
      + origin                 = (known after apply)
      + route_table_id         = (known after apply)
      + state                  = (known after apply)

      + timeouts {
          + create = "5m"
        }
    }

  # module.vpc.aws_route.public_internet_gateway[0] will be created
  + resource "aws_route" "public_internet_gateway" {
      + destination_cidr_block = "0.0.0.0/0"
      + gateway_id             = (known after apply)
      + id                     = (known after apply)
      + instance_id            = (known after apply)
      + instance_owner_id      = (known after apply)
      + network_interface_id   = (known after apply)
      + origin                 = (known after apply)
      + route_table_id         = (known after apply)
      + state                  = (known after apply)

      + timeouts {
          + create = "5m"
        }
    }

  # module.vpc.aws_route_table.database[0] will be created
  + resource "aws_route_table" "database" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = (known after apply)
      + tags             = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
      + tags_all         = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
      + vpc_id           = (known after apply)
    }

  # module.vpc.aws_route_table.database[1] will be created
  + resource "aws_route_table" "database" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = (known after apply)
      + tags             = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
      + tags_all         = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
      + vpc_id           = (known after apply)
    }

  # module.vpc.aws_route_table.private[0] will be created
  + resource "aws_route_table" "private" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = (known after apply)
      + tags             = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
      + tags_all         = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
      + vpc_id           = (known after apply)
    }

  # module.vpc.aws_route_table.private[1] will be created
  + resource "aws_route_table" "private" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = (known after apply)
      + tags             = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
      + tags_all         = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
      + vpc_id           = (known after apply)
    }

  # module.vpc.aws_route_table.public[0] will be created
  + resource "aws_route_table" "public" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = (known after apply)
      + tags             = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
      + tags_all         = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
      + vpc_id           = (known after apply)
    }

  # module.vpc.aws_route_table_association.database[0] will be created
  + resource "aws_route_table_association" "database" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.database[1] will be created
  + resource "aws_route_table_association" "database" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.private[0] will be created
  + resource "aws_route_table_association" "private" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.private[1] will be created
  + resource "aws_route_table_association" "private" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.public[0] will be created
  + resource "aws_route_table_association" "public" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.public[1] will be created
  + resource "aws_route_table_association" "public" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_subnet.database[0] will be created
  + resource "aws_subnet" "database" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-1a"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.151.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
          + "Type"        = "Private Database subnets"
        }
      + tags_all                                       = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
          + "Type"        = "Private Database subnets"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.database[1] will be created
  + resource "aws_subnet" "database" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-1b"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.152.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
          + "Type"        = "Private Database subnets"
        }
      + tags_all                                       = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
          + "Type"        = "Private Database subnets"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.private[0] will be created
  + resource "aws_subnet" "private" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-1a"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.1.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
          + "Type"        = "Private Subnets"
        }
      + tags_all                                       = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
          + "Type"        = "Private Subnets"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.private[1] will be created
  + resource "aws_subnet" "private" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-1b"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.2.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
          + "Type"        = "Private Subnets"
        }
      + tags_all                                       = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
          + "Type"        = "Private Subnets"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.public[0] will be created
  + resource "aws_subnet" "public" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-1a"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.101.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = true
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
          + "Type"        = "Public Subnets"
        }
      + tags_all                                       = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
          + "Type"        = "Public Subnets"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.public[1] will be created
  + resource "aws_subnet" "public" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-1b"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.102.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = true
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
          + "Type"        = "Public Subnets"
        }
      + tags_all                                       = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
          + "Type"        = "Public Subnets"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_vpc.this[0] will be created
  + resource "aws_vpc" "this" {
      + arn                                  = (known after apply)
      + assign_generated_ipv6_cidr_block     = false
      + cidr_block                           = "10.0.0.0/16"
      + default_network_acl_id               = (known after apply)
      + default_route_table_id               = (known after apply)
      + default_security_group_id            = (known after apply)
      + dhcp_options_id                      = (known after apply)
      + enable_classiclink                   = (known after apply)
      + enable_classiclink_dns_support       = (known after apply)
      + enable_dns_hostnames                 = true
      + enable_dns_support                   = true
      + id                                   = (known after apply)
      + instance_tenancy                     = "default"
      + ipv6_association_id                  = (known after apply)
      + ipv6_cidr_block                      = (known after apply)
      + ipv6_cidr_block_network_border_group = (known after apply)
      + main_route_table_id                  = (known after apply)
      + owner_id                             = (known after apply)
      + tags                                 = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
      + tags_all                             = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
    }

Plan: 27 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + azs                          = [
      + "us-east-1a",
      + "us-east-1b",
    ]
  + database_subnets             = [
      + (known after apply),
      + (known after apply),
    ]
  + database_subnets_cidr_blocks = [
      + "10.0.151.0/24",
      + "10.0.152.0/24",
    ]
  + igw_id                       = (known after apply)
  + nat_public_ips               = [
      + (known after apply),
      + (known after apply),
    ]
  + natgw_ids                    = [
      + (known after apply),
      + (known after apply),
    ]
  + private_subnets              = [
      + (known after apply),
      + (known after apply),
    ]
  + private_subnets_cidr_blocks  = [
      + "10.0.1.0/24",
      + "10.0.2.0/24",
    ]
  + public_subnets               = [
      + (known after apply),
      + (known after apply),
    ]
  + public_subnets_cidr_blocks   = [
      + "10.0.101.0/24",
      + "10.0.102.0/24",
    ]
  + vpc_cidr_block               = "10.0.0.0/16"
  + vpc_id                       = (known after apply)

──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply"
now.ezpedvi@CA-00005136:/mnt/c/Users/ezpedvi/Desktop/Terraform/krd-terraform/3-tier/vpc$ terraform plan

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # module.vpc.aws_db_subnet_group.database[0] will be created
  + resource "aws_db_subnet_group" "database" {
      + arn         = (known after apply)
      + description = "Database subnet group for Hr-Stage-vpc-1"
      + id          = (known after apply)
      + name        = "hr-stage-vpc-1"
      + name_prefix = (known after apply)
      + subnet_ids  = (known after apply)
      + tags        = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
      + tags_all    = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
    }

  # module.vpc.aws_eip.nat[0] will be created
  + resource "aws_eip" "nat" {
      + allocation_id        = (known after apply)
      + association_id       = (known after apply)
      + carrier_ip           = (known after apply)
      + customer_owned_ip    = (known after apply)
      + domain               = (known after apply)
      + id                   = (known after apply)
      + instance             = (known after apply)
      + network_border_group = (known after apply)
      + network_interface    = (known after apply)
      + private_dns          = (known after apply)
      + private_ip           = (known after apply)
      + public_dns           = (known after apply)
      + public_ip            = (known after apply)
      + public_ipv4_pool     = (known after apply)
      + tags                 = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
      + tags_all             = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
      + vpc                  = true
    }

  # module.vpc.aws_eip.nat[1] will be created
  + resource "aws_eip" "nat" {
      + allocation_id        = (known after apply)
      + association_id       = (known after apply)
      + carrier_ip           = (known after apply)
      + customer_owned_ip    = (known after apply)
      + domain               = (known after apply)
      + id                   = (known after apply)
      + instance             = (known after apply)
      + network_border_group = (known after apply)
      + network_interface    = (known after apply)
      + private_dns          = (known after apply)
      + private_ip           = (known after apply)
      + public_dns           = (known after apply)
      + public_ip            = (known after apply)
      + public_ipv4_pool     = (known after apply)
      + tags                 = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
      + tags_all             = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
      + vpc                  = true
    }

  # module.vpc.aws_internet_gateway.this[0] will be created
  + resource "aws_internet_gateway" "this" {
      + arn      = (known after apply)
      + id       = (known after apply)
      + owner_id = (known after apply)
      + tags     = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
      + tags_all = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
      + vpc_id   = (known after apply)
    }

  # module.vpc.aws_nat_gateway.this[0] will be created
  + resource "aws_nat_gateway" "this" {
      + allocation_id        = (known after apply)
      + connectivity_type    = "public"
      + id                   = (known after apply)
      + network_interface_id = (known after apply)
      + private_ip           = (known after apply)
      + public_ip            = (known after apply)
      + subnet_id            = (known after apply)
      + tags                 = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
      + tags_all             = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
    }

  # module.vpc.aws_nat_gateway.this[1] will be created
  + resource "aws_nat_gateway" "this" {
      + allocation_id        = (known after apply)
      + connectivity_type    = "public"
      + id                   = (known after apply)
      + network_interface_id = (known after apply)
      + private_ip           = (known after apply)
      + public_ip            = (known after apply)
      + subnet_id            = (known after apply)
      + tags                 = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
      + tags_all             = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
    }

  # module.vpc.aws_route.private_nat_gateway[0] will be created
  + resource "aws_route" "private_nat_gateway" {
      + destination_cidr_block = "0.0.0.0/0"
      + id                     = (known after apply)
      + instance_id            = (known after apply)
      + instance_owner_id      = (known after apply)
      + nat_gateway_id         = (known after apply)
      + network_interface_id   = (known after apply)
      + origin                 = (known after apply)
      + route_table_id         = (known after apply)
      + state                  = (known after apply)

      + timeouts {
          + create = "5m"
        }
    }

  # module.vpc.aws_route.private_nat_gateway[1] will be created
  + resource "aws_route" "private_nat_gateway" {
      + destination_cidr_block = "0.0.0.0/0"
      + id                     = (known after apply)
      + instance_id            = (known after apply)
      + instance_owner_id      = (known after apply)
      + nat_gateway_id         = (known after apply)
      + network_interface_id   = (known after apply)
      + origin                 = (known after apply)
      + route_table_id         = (known after apply)
      + state                  = (known after apply)

      + timeouts {
          + create = "5m"
        }
    }

  # module.vpc.aws_route.public_internet_gateway[0] will be created
  + resource "aws_route" "public_internet_gateway" {
      + destination_cidr_block = "0.0.0.0/0"
      + gateway_id             = (known after apply)
      + id                     = (known after apply)
      + instance_id            = (known after apply)
      + instance_owner_id      = (known after apply)
      + network_interface_id   = (known after apply)
      + origin                 = (known after apply)
      + route_table_id         = (known after apply)
      + state                  = (known after apply)

      + timeouts {
          + create = "5m"
        }
    }

  # module.vpc.aws_route_table.database[0] will be created
  + resource "aws_route_table" "database" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = (known after apply)
      + tags             = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
      + tags_all         = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
      + vpc_id           = (known after apply)
    }

  # module.vpc.aws_route_table.database[1] will be created
  + resource "aws_route_table" "database" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = (known after apply)
      + tags             = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
      + tags_all         = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
      + vpc_id           = (known after apply)
    }

  # module.vpc.aws_route_table.private[0] will be created
  + resource "aws_route_table" "private" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = (known after apply)
      + tags             = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
      + tags_all         = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
      + vpc_id           = (known after apply)
    }

  # module.vpc.aws_route_table.private[1] will be created
  + resource "aws_route_table" "private" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = (known after apply)
      + tags             = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
      + tags_all         = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
      + vpc_id           = (known after apply)
    }

  # module.vpc.aws_route_table.public[0] will be created
  + resource "aws_route_table" "public" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = (known after apply)
      + tags             = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
      + tags_all         = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
      + vpc_id           = (known after apply)
    }

  # module.vpc.aws_route_table_association.database[0] will be created
  + resource "aws_route_table_association" "database" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.database[1] will be created
  + resource "aws_route_table_association" "database" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.private[0] will be created
  + resource "aws_route_table_association" "private" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.private[1] will be created
  + resource "aws_route_table_association" "private" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.public[0] will be created
  + resource "aws_route_table_association" "public" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.public[1] will be created
  + resource "aws_route_table_association" "public" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_subnet.database[0] will be created
  + resource "aws_subnet" "database" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-1a"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.151.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
          + "Type"        = "Private Database subnets"
        }
      + tags_all                                       = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
          + "Type"        = "Private Database subnets"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.database[1] will be created
  + resource "aws_subnet" "database" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-1b"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.152.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
          + "Type"        = "Private Database subnets"
        }
      + tags_all                                       = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
          + "Type"        = "Private Database subnets"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.private[0] will be created
  + resource "aws_subnet" "private" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-1a"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.1.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
          + "Type"        = "Private Subnets"
        }
      + tags_all                                       = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
          + "Type"        = "Private Subnets"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.private[1] will be created
  + resource "aws_subnet" "private" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-1b"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.2.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
          + "Type"        = "Private Subnets"
        }
      + tags_all                                       = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
          + "Type"        = "Private Subnets"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.public[0] will be created
  + resource "aws_subnet" "public" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-1a"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.101.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = true
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
          + "Type"        = "Public Subnets"
        }
      + tags_all                                       = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
          + "Type"        = "Public Subnets"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.public[1] will be created
  + resource "aws_subnet" "public" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-1b"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.102.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = true
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
          + "Type"        = "Public Subnets"
        }
      + tags_all                                       = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
          + "Type"        = "Public Subnets"
        }
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_vpc.this[0] will be created
  + resource "aws_vpc" "this" {
      + arn                                  = (known after apply)
      + assign_generated_ipv6_cidr_block     = false
      + cidr_block                           = "10.0.0.0/16"
      + default_network_acl_id               = (known after apply)
      + default_route_table_id               = (known after apply)
      + default_security_group_id            = (known after apply)
      + dhcp_options_id                      = (known after apply)
      + enable_classiclink                   = (known after apply)
      + enable_classiclink_dns_support       = (known after apply)
      + enable_dns_hostnames                 = true
      + enable_dns_support                   = true
      + id                                   = (known after apply)
      + instance_tenancy                     = "default"
      + ipv6_association_id                  = (known after apply)
      + ipv6_cidr_block                      = (known after apply)
      + ipv6_cidr_block_network_border_group = (known after apply)
      + main_route_table_id                  = (known after apply)
      + owner_id                             = (known after apply)
      + tags                                 = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
      + tags_all                             = {
          + "Environment" = "Stage"
          + "Name"        = "Hr-Stage-vpc-1"
          + "Owner"       = "Hr"
        }
    }

Plan: 27 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + azs                          = [
      + "us-east-1a",
      + "us-east-1b",
    ]
  + database_subnets             = [
      + (known after apply),
      + (known after apply),
    ]
  + database_subnets_cidr_blocks = [
      + "10.0.151.0/24",
      + "10.0.152.0/24",
    ]
  + igw_id                       = (known after apply)
  + nat_public_ips               = [
      + (known after apply),
      + (known after apply),
    ]
  + natgw_ids                    = [
      + (known after apply),
      + (known after apply),
    ]
  + private_subnets              = [
      + (known after apply),
      + (known after apply),
    ]
  + private_subnets_cidr_blocks  = [
      + "10.0.1.0/24",
      + "10.0.2.0/24",
    ]
  + public_subnets               = [
      + (known after apply),
      + (known after apply),
    ]
  + public_subnets_cidr_blocks   = [
      + "10.0.101.0/24",
      + "10.0.102.0/24",
    ]
  + vpc_cidr_block               = "10.0.0.0/16"
  + vpc_id                       = (known after apply)

──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply"
now.
