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

variable "vnet_name" {
  default = "vnet"
  type    = string
}

variable "subnet_name" {
  default = "subnet"
  type    = string
}

variable "subnet_address_space" {
  type = list
}

variable "subnet_address_prefixes" {
  type = list
}

variable "subnet_service_endpoints" {
  type    = list
  default = ["Microsoft.Sql", "Microsoft.Storage", "Microsoft.AzureActiveDirectory", "Microsoft.AzureCosmosDB", "Microsoft.CognitiveServices", "Microsoft.ContainerRegistry", "Microsoft.KeyVault", "Microsoft.ServiceBus", "Microsoft.EventHub"]
}

variable "enforce_private_link_endpoint_network_policies" {
  type    = bool
  default = true
}
