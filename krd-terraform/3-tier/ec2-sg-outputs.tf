output "ssh_http_sg" {
  description = "ID of the bastion host security group"
  value       = module.ssh_http_sg.security_group_id
}

output "bastion_host_sg_name" {
  description = "Name of the sec grp"
  value       = module.ssh_http_sg.security_group_name
}

output "bastion_host_sg_vpc_id" {
  description = "VPC ID in which bastion host sec grp is present"
  value       = module.ssh_http_sg.security_group_vpc_id
}