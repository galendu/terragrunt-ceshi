# outputs.tf
output "vpc_id" {
  description = "The VPC IDs created"
  value       = alicloud_vpc.this[*].id
}
