output "id" {
  value = azurerm_private_endpoint.private_endpoint.id
}

output "private_dns_zone_configs" {
  value = azurerm_private_endpoint.private_endpoint.private_dns_zone_configs
}

output "custom_dns_configs" {
  value = azurerm_private_endpoint.private_endpoint.custom_dns_configs
}

output "private_service_connection" {
  value = azurerm_private_endpoint.private_endpoint.private_service_connection
}

output "ip_address" {
  value = azurerm_private_endpoint.private_endpoint.private_service_connection.0.private_ip_address
}
