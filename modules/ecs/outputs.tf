output "ecs_ids" {
  value = alicloud_instance.ecs[*].id
}
