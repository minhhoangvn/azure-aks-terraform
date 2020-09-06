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

variable "cache_name" {
  default = "redis-cache"
  type    = string
}

variable "capacity" {
  default = 2
  type    = number
}

variable "family" {
  default = "C"
  type    = string
}

variable "sku_name" {
  default = "Standard"
  type    = string
}

variable "enable_non_ssl_port" {
  default = true
  type    = bool
}

variable "minimum_tls_version" {
  default = "1.0"
  type    = string
}

variable "maxmemory_policy" {
  default = "volatile-lru"
  type    = string
}
