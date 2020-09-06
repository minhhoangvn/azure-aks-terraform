
resource "azurerm_postgresql_server" "postgresql_server" {
  name                          = var.database_server_name
  location                      = var.resource_group_location
  resource_group_name           = var.resource_group_name
  sku_name                      = var.sku_name
  version                       = var.database_version
  administrator_login           = var.admin_username
  administrator_login_password  = var.admin_password
  auto_grow_enabled             = var.auto_grow_enabled
  backup_retention_days         = var.backup_retention_days
  geo_redundant_backup_enabled  = var.geo_redundant_backup_enabled
  ssl_enforcement_enabled       = var.ssl_enforcement_enabled
  public_network_access_enabled = var.public_network_access_enabled
  # 2TB storage
  storage_mb = var.storage_mb
  tags = {
    Environment = var.environment_tag
  }
}

resource "azurerm_postgresql_database" "postgresql_database" {
  name                = var.database_name
  resource_group_name = var.resource_group_name
  server_name         = azurerm_postgresql_server.postgresql_server.name
  charset             = var.database_charset
  collation           = var.database_collation
}
