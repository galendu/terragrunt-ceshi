variable "security_groups" {
  description = "Map of security groups and their rules"
  type = map(object({
    description = string
    rules = list(object({
      port     = number
      protocol = string
      cidr     = string
    }))
  }))
}
