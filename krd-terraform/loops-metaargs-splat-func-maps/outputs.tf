output "for_output_list" {
  description = "for loop with list"
  value       = [for instance in aws_instance.my-ec2 : instance.public_dns]
}

output "for_output_map" {
  description = "for loop with map"
  value       = { for instance in aws_instance.my-ec2 : instance.id => instance.public_dns }
}

output "for_output_map_advanced" {
  description = "for loop with map advanced"
  value       = { for c, instance in aws_instance.my-ec2 : c => instance.public_dns }
}

output "legacy_splat_instance_publicdns" {
  description = "Legacy splat operator"
  value       = aws_instance.my-ec2.*.public_dns
}

output "latest_splat_instance_publicdns" {
  description = "Latest splat operator"
  value       = aws_instance.my-ec2[*].public_dns
}