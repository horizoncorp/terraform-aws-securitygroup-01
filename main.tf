resource "aws_security_group" "sg" {
  count  = var.security_group_id == null ? true : 1
  name   = var.name
  vpc_id = var.vpc_id
}

resource "aws_security_group_rule" "default_rule" {
  count             = var.security_group_id == null ? true : 1
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.sg[0].id
}

resource "aws_security_group_rule" "sg_rule" {
  count             = var.security_group_id != null ? true : 1
  type              = var.sg_rule_type
  from_port         = var.from_port
  to_port           = var.to_port
  protocol          = var.protocol
  cidr_blocks       = var.cidr_blocks
  security_group_id = var.security_group_id
}
