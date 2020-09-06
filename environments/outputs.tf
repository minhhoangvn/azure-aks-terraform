### AKS output
output "resource_group_location" {
  value = azurerm_resource_group.group.location
}

output "resource_group_id" {
  value = azurerm_resource_group.group.id
}

output "k8s_fqdn" {
  value = module.aks.fqdn
}

output "client_key" {
  value = module.aks.client_key
}

output "client_certificate" {
  value = module.aks.client_certificate
}

output "cluster_ca_certificate" {
  value = module.aks.cluster_ca_certificate
}

output "cluster_username" {
  value = module.aks.cluster_username
}

output "cluster_password" {
  value = module.aks.cluster_password
}

output "kube_config" {
  value = module.aks.kube_config
}

output "host" {
  value = module.aks.host
}


### Redis output

output "redis_hostname" {
  value = module.redis.hostname
}

output "redis_primary_access_key" {
  value = module.redis.primary_access_key
}

output "redis_secondary_access_key" {
  value = module.redis.secondary_access_key
}

output "redis_primary_connection_string" {
  value = module.redis.primary_connection_string
}

output "redis_secondary_connection_string" {
  value = module.redis.secondary_connection_string
}

## Storage account

output "storage_primary_endpoint" {
  value = module.storage.primary_endpoint
}

output "storage_primary_host" {
  value = module.storage.primary_host
}

output "storage_primary_access_key" {
  value = module.storage.primary_access_key
}

output "storage_secondary_endpoint" {
  value = module.storage.secondary_endpoint
}

output "storage_secondary_host" {
  value = module.storage.secondary_host
}

output "storage_secondary_access_key" {
  value = module.storage.secondary_access_key
}

## Postgresql output

output "server_fqdn" {
  value = module.postgresql.server_fqdn
}

output "db_id" {
  value = module.postgresql.db_id
}

output "server_id" {
  value = module.postgresql.server_id
}

## Private DNS record

output "postgresql_private_dns" {
  value = module.private_postgresql_dns_record.fqdn
}
