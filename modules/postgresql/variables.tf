variable "resource_group_location" {
  default = "Central US"
  type    = string
}

variable "resource_group_name" {
  type = string
}

variable "database_server_name" {
  default = "postgresql-server"
  type    = string
}

variable "database_name" {
  default = "db"
  type    = string
}

variable "environment_tag" {
  type = string
}

variable "sku_name" {
  type = string
}

variable "database_version" {
  default = "10"
  type    = string
}

variable "admin_username" {
  type = string
}

variable "admin_password" {
  type = string
}

variable "auto_grow_enabled" {
  type    = bool
  default = true
}

variable "backup_retention_days" {
  type    = number
  default = 7
}

variable "geo_redundant_backup_enabled" {
  type    = bool
  default = false
}

variable "ssl_enforcement_enabled" {
  type    = bool
  default = false
}

variable "public_network_access_enabled" {
  type    = bool
  default = false
}

variable "storage_mb" {
  type    = number
  default = 512000
}

variable "database_charset" {
  type    = string
  default = "UTF8"
}

variable "database_collation" {
  type    = string
  default = "English_United States.1252"
}
