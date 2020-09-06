### AKS output
output "resource_group_location" {
  value = module.infrastructure.resource_group_location
}

output "resource_group_id" {
  value = module.infrastructure.resource_group_id
}

output "k8s_fqdn" {
  value = module.infrastructure.k8s_fqdn
}

output "client_key" {
  value = module.infrastructure.client_key
}

output "client_certificate" {
  value = module.infrastructure.client_certificate
}

output "cluster_ca_certificate" {
  value = module.infrastructure.cluster_ca_certificate
}

output "cluster_username" {
  value = module.infrastructure.cluster_username
}

output "cluster_password" {
  value = module.infrastructure.cluster_password
}

output "kube_config" {
  value = module.infrastructure.kube_config
}

output "host" {
  value = module.infrastructure.host
}


### Redis output

output "redis_hostname" {
  value = module.infrastructure.redis_hostname
}

output "redis_primary_access_key" {
  value = module.infrastructure.redis_primary_access_key
}

output "redis_secondary_access_key" {
  value = module.infrastructure.redis_secondary_access_key
}

output "redis_primary_connection_string" {
  value = module.infrastructure.redis_primary_connection_string
}

output "redis_secondary_connection_string" {
  value = module.infrastructure.redis_secondary_connection_string
}

## Storage account

output "storage_primary_endpoint" {
  value = module.infrastructure.storage_primary_endpoint
}

output "storage_primary_host" {
  value = module.infrastructure.storage_primary_host
}

output "storage_primary_access_key" {
  value = module.infrastructure.storage_primary_access_key
}

output "storage_secondary_endpoint" {
  value = module.infrastructure.storage_secondary_endpoint
}

output "storage_secondary_host" {
  value = module.infrastructure.storage_secondary_host
}

output "storage_secondary_access_key" {
  value = module.infrastructure.storage_secondary_access_key
}

## Postgresql output

output "server_fqdn" {
  value = module.infrastructure.server_fqdn
}

output "db_id" {
  value = module.infrastructure.db_id
}

output "server_id" {
  value = module.infrastructure.server_id
}

## Private DNS record

output "postgresql_private_dns" {
  value = module.infrastructure.postgresql_private_dns
}
