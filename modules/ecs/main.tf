
provider "alicloud" {
  region = var.region
}

resource "alicloud_instance" "ecs" {
  count           = var.instance_count
  instance_type   = var.instance_type
  image_id        = "ubuntu_18_04_x64_20G_alibase_20200914.vhd"
  security_groups = [module.security_group.web_sg_id]
}

