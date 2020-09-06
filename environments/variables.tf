variable "resource_group_name" {
  type    = string
  default = "dev"
}

variable "location" {
  type    = string
  default = "Central US"
}


variable "environment_tag" {
  type    = string
  default = "dev"
}

variable "infra_subnet_address_space" {
  type    = string
  default = "192.0.0.0/8"
}

variable "aks_subnet_address_space" {
  type    = string
  default = "191.0.0.0/8"
}

variable "azurerm_private_dns_zone_name" {
  type    = string
  default = "private.azure.com"
}

variable "database_server_name" {
  type    = string
  default = "postgresql-dev-server"
}

variable "database_name" {
  type    = string
  default = "db-dev"
}

variable "postgres_sku_name" {
  type    = string
  default = "GP_Gen5_2"
}

variable "admin_username" {
  type    = string
  default = "terrafrom"
}

variable "admin_password" {
  type    = string
  default = "Terra@F0rm!"
}

variable "storage_mb" {
  type    = number
  default = 256000
}

variable "cache_name" {
  type    = string
  default = "terraform-redis-cache-dev"
}

variable "cache_capacity" {
  type    = number
  default = 1
}

variable "cache_family" {
  type    = string
  default = "C"
}

variable "redis_sku_name" {
  type    = string
  default = "Basic"
}

variable "storage_name" {
  type    = string
  default = "terraformstorage"
}

variable "private_endpoint_name" {
  type    = string
  default = "psql-private-dev"
}

variable "private_dns_zone_group_name" {
  type    = string
  default = "private-dns-zone-group-dev"
}

variable "private_service_connection_name" {
  type    = string
  default = "private-service-connection-dev"
}

variable "private_dns_record_a_name_psql" {
  type    = string
  default = "psql"
}

variable "cluster_name" {
  type    = string
  default = "k8s-cluster"
}

variable "vm_size" {
  type    = string
  default = "Standard_D2_v3"
}

variable "node_pool_name" {
  type    = string
  default = "pool_1"
}

variable "aks_dns_service_ip" {
  type    = string
  default = "10.0.0.10"
}

variable "aks_docker_bridge_cidr" {
  type    = string
  default = "172.0.0.1/8"
}

variable "aks_pod_cidr" {
  type    = string
  default = null
}

variable "aks_service_cidr" {
  type    = string
  default = "10.0.0.0/16"
}
