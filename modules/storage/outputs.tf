output "primary_endpoint" {
  value = azurerm_storage_account.storage.primary_blob_endpoint
}

output "primary_host" {
  value = azurerm_storage_account.storage.primary_blob_host
}

output "primary_access_key" {
  value = azurerm_storage_account.storage.primary_access_key
}

output "secondary_endpoint" {
  value = azurerm_storage_account.storage.secondary_blob_endpoint
}

output "secondary_host" {
  value = azurerm_storage_account.storage.secondary_blob_host
}

output "secondary_access_key" {
  value = azurerm_storage_account.storage.secondary_access_key
}

output "id" {
  value = azurerm_storage_account.storage.id
}
