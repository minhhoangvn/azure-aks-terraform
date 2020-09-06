output "vnet_id" {
  value = azurerm_virtual_network.vnet_infra.id
}

output "vnet_name" {
  value = azurerm_virtual_network.vnet_infra.name
}

output "subnet_id" {
  value = azurerm_subnet.subnet_infra.id
}

output "subnet_name" {
  value = azurerm_subnet.subnet_infra.name
}
