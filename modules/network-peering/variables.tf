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

variable "name" {
  type = string
}

variable "vnet_name" {
  type = string
}

variable "remote_virtual_network_id" {
  type = string
}

variable "allow_virtual_network_access" {
  type    = bool
  default = true
}

variable "allow_forwarded_traffic" {
  type    = bool
  default = true
}


variable "allow_gateway_transit" {
  type    = bool
  default = false
}
