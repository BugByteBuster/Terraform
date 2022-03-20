locals {
  db_passowrd = "fuck putin"
}

output "db_password" {
    sensitive = true
    value = local.db_passowrd
}