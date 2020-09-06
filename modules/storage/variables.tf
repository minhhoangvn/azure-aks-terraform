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

variable "storage_name" {
  default = "storage"
  type    = string
}

variable "account_kind" {
  default = "BlobStorage"
  type    = string
}

variable "account_tier" {
  default = "Standard"
  type    = string
}

variable "account_replication_type" {
  default = "RAGRS"
  type    = string
}

variable "access_tier" {
  default = "Hot"
  type    = string
}

variable "enable_https_traffic_only" {
  default = true
  type    = bool
}

variable "allow_blob_public_access" {
  default = false
  type    = bool
}
