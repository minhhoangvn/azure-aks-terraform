resource "azurerm_private_dns_zone" "private_dns" {
  name                = var.azurerm_private_dns_zone_name
  resource_group_name = var.resource_group_name
  tags = {
    Environment = var.environment_tag
  }
}

resource "azurerm_private_dns_zone_virtual_network_link" "vnet_link_dns" {
  for_each              = var.virtual_network_link
  name                  = "vnet-link-${each.key}"
  resource_group_name   = var.resource_group_name
  private_dns_zone_name = azurerm_private_dns_zone.private_dns.name
  virtual_network_id    = each.value
  registration_enabled  = var.registration_enabled
}
