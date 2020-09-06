resource "azurerm_private_dns_a_record" "dns_a_record" {
  name                = var.private_dns_record_a_name
  zone_name           = var.private_dns_zone_name
  resource_group_name = var.resource_group_name
  ttl                 = var.ttl
  records             = var.records
  tags = {
    Environment = var.environment_tag
  }
}
