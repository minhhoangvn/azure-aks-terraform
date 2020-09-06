resource "azurerm_redis_cache" "redis_cache" {
  name                = var.cache_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name

  capacity = var.capacity
  family   = var.family
  sku_name = var.sku_name

  enable_non_ssl_port = var.enable_non_ssl_port
  minimum_tls_version = var.minimum_tls_version

  redis_configuration {
    maxmemory_policy = var.maxmemory_policy
  }

  tags = {
    Environment = var.environment_tag
  }
}
