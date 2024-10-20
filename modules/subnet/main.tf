provider "alicloud" {
  region = var.region
}

resource "alicloud_vswitch" "this" {
  count      = length(var.subnet_cidr_blocks)
  vpc_id     = var.vpc_id
  name       = format("%s-subnet-%d", var.name_prefix, count.index + 1)
  cidr_block = var.subnet_cidr_blocks[count.index]
  zone_id    = var.availability_zones[count.index]

  tags = var.tags
}
