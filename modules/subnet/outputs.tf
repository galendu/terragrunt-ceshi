output "subnet_ids" {
  description = "The IDs of the created subnets"
  value       = alicloud_vswitch.this[*].id
}
