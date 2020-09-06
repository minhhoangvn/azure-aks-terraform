resource "azurerm_virtual_network" "vnet_infra" {
  name                = var.vnet_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
  address_space       = var.subnet_address_space
  tags = {
    environment = var.environment_tag
  }
}

resource "azurerm_subnet" "subnet_infra" {
  name                                           = var.subnet_name
  resource_group_name                            = var.resource_group_name
  virtual_network_name                           = azurerm_virtual_network.vnet_infra.name
  address_prefixes                               = var.subnet_address_prefixes
  service_endpoints                              = var.subnet_service_endpoints
  enforce_private_link_endpoint_network_policies = var.enforce_private_link_endpoint_network_policies
}
