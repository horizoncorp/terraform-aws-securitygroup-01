module "ssh_22" {
  source            = "../../"
  name              = var.name
  security_group_id = var.security_group_id
  sg_rule_type      = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = var.cidr_blocks
}
