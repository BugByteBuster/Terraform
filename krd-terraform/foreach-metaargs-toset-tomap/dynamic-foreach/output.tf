output "supported_instance_types_v3_1" {
  value = keys({
    for az, type in data.aws_ec2_instance_type_offerings.supported_instance_types_v3 :
  az => type.instance_types if length(type.instance_types) != 0 })
}