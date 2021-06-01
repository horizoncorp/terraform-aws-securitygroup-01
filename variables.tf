variable "name" {
    default = ""
}
variable "security_group_id" {
    default = ""
}
variable "vpc_id" {
    default = ""
}
variable "sg_rule_type" {
    default = "egress"
}
variable "from_port" {
    default = 0
}
variable "to_port" {
    default = 0
}
variable "protocol" {
    default = ""
}
variable "cidr_blocks" {
    default = []
}