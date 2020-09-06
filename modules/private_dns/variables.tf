variable "resource_group_location" {
  default = "Central US"
  type    = string
}

variable "azurerm_private_dns_zone_name" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "environment_tag" {
  type = string
}

variable "virtual_network_link" {
  type = map
}

variable "registration_enabled" {
  default = true
  type    = bool
}
