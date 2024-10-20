# variables.tf
variable "region" {
  description = "The region to deploy the VPC"
  type        = string
}

variable "vpc_count" {
  description = "The number of VPCs to create"
  type        = number
  default     = 1
}

variable "cidr_blocks" {
  description = "A list of CIDR blocks for each VPC"
  type        = list(string)
}

variable "name_prefix" {
  description = "Prefix for VPC name"
  type        = string
}

variable "tags" {
  description = "Tags to apply to the VPC"
  type        = map(string)
  default     = {}
}
