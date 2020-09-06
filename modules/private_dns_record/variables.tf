variable "resource_group_location" {
  default = "Central US"
  type    = string
}

variable "resource_group_name" {
  type = string
}

variable "environment_tag" {
  type = string
}

variable "private_dns_record_a_name" {
  type = string
}

variable "private_dns_zone_name" {
  type = string
}

variable "ttl" {
  type    = number
  default = 30
}

variable "records" {
  type = list
}
