output "id" {
  value = azurerm_private_dns_zone.private_dns.id
}

output "name" {
  value = azurerm_private_dns_zone.private_dns.name
}

output "number_of_record_sets" {
  value = azurerm_private_dns_zone.private_dns.number_of_record_sets
}

output "max_number_of_virtual_network_links" {
  value = azurerm_private_dns_zone.private_dns.max_number_of_virtual_network_links
}

output "max_number_of_record_sets" {
  value = azurerm_private_dns_zone.private_dns.max_number_of_record_sets
}

output "vnet_link_dns_id" {
  value = {
    for dns in azurerm_private_dns_zone_virtual_network_link.vnet_link_dns :
    dns.name => dns.id
  }
}

