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

variable "private_endpoint_name" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "private_dns_zone_group_name" {
  type    = string
  default = "private-dns-zone-group"
}

variable "private_dns_zone_ids" {
  type = list
}

variable "private_service_connection_name" {
  type    = string
  default = "private-service-connection"
}

variable "private_connection_resource_id" {
  type = string
}

variable "subresource_names" {
  default = ["postgresqlServer"]
  type    = list
}

variable "is_manual_connection" {
  type    = bool
  default = false
}
