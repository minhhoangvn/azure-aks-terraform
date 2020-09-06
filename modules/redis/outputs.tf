output "hostname" {
  value = azurerm_redis_cache.redis_cache.hostname
}

output "primary_access_key" {
  value = azurerm_redis_cache.redis_cache.primary_access_key
}

output "secondary_access_key" {
  value = azurerm_redis_cache.redis_cache.secondary_access_key
}

output "primary_connection_string" {
  value = azurerm_redis_cache.redis_cache.primary_connection_string
}

output "secondary_connection_string" {
  value = azurerm_redis_cache.redis_cache.secondary_connection_string
}

