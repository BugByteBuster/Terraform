output "ec2_public_ip" {
  description = "ec2 instance public IP"
  value       = aws_instance.my-ec2.public_ip
}

output "ec2_public_dns" {
  description = "ec2 instance public dns"
  value       = aws_instance.my-ec2.public_dns
}