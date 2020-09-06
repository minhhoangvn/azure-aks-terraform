variable "k8s_node" {
  default = 1
  type    = number
}

variable "kubernetes_version" {
  default = "1.16.13"
  type    = string
}

variable "dns_prefix" {
  default = "k8sdns"
  type    = string
}

variable "cluster_name" {
  default = "azure-k8s"
  type    = string
}

variable "network_plugin" {
  default = "azure"
  type    = string
}

variable "vm_size" {
  default = "Standard_E2_v3"
  type    = string
}

variable "subnet_id" {
  type = string
}

variable "identity" {
  default = "SystemAssigned"
  type    = string
}

variable "node_pool_name" {
  type = string
}

variable "environment_tag" {
  type = string
}

variable "resource_group_location" {
  default = "Central US"
  type    = string
}

variable "resource_group_name" {
  type = string
}

variable "dns_service_ip" {
  type = string
  default = "10.0.0.1"
}

variable "docker_bridge_cidr" {
  type    = string
  default = "172.0.0.1/8"
}

variable "pod_cidr" {
  type    = string
  default = null
}

variable "service_cidr" {
  type = string
  default = "10.0.0.0/16"
}
