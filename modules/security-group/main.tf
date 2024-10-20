
resource "alicloud_security_group" "sg" {
  for_each    = var.security_groups
  vpc_id      = var.vpc_id
  name        = each.key
  description = each.value.description
}

resource "alicloud_security_group_rule" "rule" {
  for_each = var.security_groups
  count    = length(each.value.rules)

  security_group_id = alicloud_security_group.sg[each.key].id
  ip_protocol       = each.value.rules[count.index].protocol
  port_range        = each.value.rules[count.index].port
  cidr_ip           = each.value.rules[count.index].cidr
}
