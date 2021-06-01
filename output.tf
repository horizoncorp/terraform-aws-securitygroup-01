output "sg_id" {
  description = "SG ID"
  value       = length(var.security_group_id) == null ? true : aws_security_group.sg[0].id
}
