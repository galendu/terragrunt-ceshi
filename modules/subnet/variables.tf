variable "region" {
  description = "The region to deploy the subnets"
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID to associate the subnets"
  type        = string
}

variable "subnet_cidr_blocks" {
  description = "A list of CIDR blocks for each subnet"
  type        = list(string)
}

variable "availability_zones" {
  description = "A list of availability zones corresponding to the subnets"
  type        = list(string)
}

variable "name_prefix" {
  description = "Prefix for Subnet names"
  type        = string
}

variable "tags" {
  description = "Tags to apply to the subnets"
  type        = map(string)
  default     = {}
}
