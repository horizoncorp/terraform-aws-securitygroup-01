# output "sg_id" {
#   description = "SG ID"
#   value       = var.security_group_id == "" ? aws_security_group.sg[0].id : var.security_group_id 
# }

locals {
  sg_value = var.security_group_id == "" ? aws_security_group.sg[0].id : var.security_group_id 
}

output "sg_id" {
  description = "SG ID"
  value       = local.sg_value
}