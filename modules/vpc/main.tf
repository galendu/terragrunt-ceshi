provider "alicloud" {
  region = var.region
}

resource "alicloud_vpc" "this" {
  count      = var.vpc_count
  name       = format("%s-vpc-%d", var.name_prefix, count.index + 1)
  cidr_block = var.cidr_blocks[count.index]

  tags = var.tags
}
