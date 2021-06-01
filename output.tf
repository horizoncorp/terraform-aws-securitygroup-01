output "sg_id" {
  description = "SG ID"
  value       = var.security_group_id == "" ? aws_security_group.sg[0].id : var.security_group_id 
}