resource "aws_security_group" "sg" {
  name   = var.name
  vpc_id = var.vpc_id
}

module "allow_all_egress" {
  source            = "./modules/sg-rule"
  security_group_id = aws_security_group.sg.id
  sg_rule_type      = "egress"
  from_port         = 22
  to_port           = 22
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}
