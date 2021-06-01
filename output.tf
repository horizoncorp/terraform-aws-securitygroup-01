output "sg_id" {
  count  = length(var.security_group_id) ? 0 : 1
  description = "SG ID"
  value       = aws_security_group.sg.id
}
