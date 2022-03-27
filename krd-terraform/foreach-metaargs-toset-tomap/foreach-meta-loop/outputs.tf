// when using for_Each Splat operator is not supported.
output "instace_public_ip" {
  description = "public IP addresses of the ec2 instances"
  value       = [for instance in aws_instance.myec2 : instance.public_ip]
}

output "instance_public_dns" {
  description = "Public DNS of teh ec2 instances"
  value       = [for instance in aws_instance.myec2 : instance.public_dns]
}

output "instance_public_dns_set" {
  description = "Public DNS of teh ec2 instances"
  value       = toset([for instance in aws_instance.myec2 : instance.public_dns])
}

output "instance_public_dns_map" {
  description = "Public DNS of teh ec2 instances"
  value       = tomap({ for az, instance in aws_instance.myec2 : az => instance.public_dns })
}