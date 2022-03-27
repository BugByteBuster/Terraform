output "ec2_instance_bastion_host_id" {
  description = "List of IDs of instances"
  value       = module.ec2_instance_bastion_host.id
}
output "ec2_bastion_public_ip" {
  description = "List of Public ip address assigned to the instances"
  value       = module.ec2_instance_bastion_host.public_ip
}

/*
# Private EC2 Instances
output "ec2_instance_private_ids" {
  description = "List of IDs of instances"
  value       = module.ec2_instance_private.id
}
output "ec2_private_ip" {
  description = "List of private ip address assigned to the instances"
  value       = module.ec2_instance_private.private_ip
}

*/