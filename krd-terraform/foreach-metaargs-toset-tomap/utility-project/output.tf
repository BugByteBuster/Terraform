output "supported_instance_types_v1" {
  value = data.aws_ec2_instance_type_offerings.supported_instance_types_v1.instance_types
}

output "supported_instance_types_v2" {
  value = toset([for type in data.aws_ec2_instance_type_offerings.supported_instance_types_v2 : type.instance_types])
}

//map of supported instance types
output "supported_instance_types_v2_2" {
  value = { for az, type in data.aws_ec2_instance_type_offerings.supported_instance_types_v2 : az => type.instance_types }
}

//version3
output "supported_instance_types_v3" {
  value = { for az, type in data.aws_ec2_instance_type_offerings.supported_instance_types_v3 : az => type.instance_types }
}

//out only supported and exclude unsupported
output "supported_instance_types_v3_1" {
  value = keys({
    for az, type in data.aws_ec2_instance_type_offerings.supported_instance_types_v3 :
  az => type.instance_types if length(type.instance_types) != 0 })
}

//to get specific index value from the output list
output "supported_instance_types_v3_2" {
  value = keys({
    for az, type in data.aws_ec2_instance_type_offerings.supported_instance_types_v3 :
  az => type.instance_types if length(type.instance_types) != 0 })[0]
}