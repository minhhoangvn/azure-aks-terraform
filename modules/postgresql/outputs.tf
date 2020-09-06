output "server_fqdn" {
  value = azurerm_postgresql_server.postgresql_server.fqdn
}

output "db_id" {
  value = azurerm_postgresql_database.postgresql_database.id
}

output "server_id" {
  value = azurerm_postgresql_server.postgresql_server.id
}
