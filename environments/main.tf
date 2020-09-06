resource "azurerm_resource_group" "group" {
  name     = var.resource_group_name
  location = var.location
}

module "network_infrastructure" {
  source                  = "../modules/network"
  vnet_name = "dev-network-infrastructure"
  resource_group_name     = var.resource_group_name
  environment_tag         = var.environment_tag
  subnet_address_space    = [var.infra_subnet_address_space]
  subnet_address_prefixes = [cidrsubnet(var.infra_subnet_address_space, 2, 0)]
  depends_on              = [azurerm_resource_group.group]
}

module "network_aks" {
  source                  = "../modules/network"
  vnet_name = "dev-network-aks"
  resource_group_name     = var.resource_group_name
  environment_tag         = var.environment_tag
  subnet_address_space    = [var.aks_subnet_address_space]
  subnet_address_prefixes = [cidrsubnet(var.aks_subnet_address_space, 2, 0)]
  depends_on              = [azurerm_resource_group.group]
}

module "network_peering_aks_to_infra" {
 source                  = "../modules/network-peering"
  resource_group_name     = var.resource_group_name
  environment_tag         = var.environment_tag
  name = "aks-to-infra"
  vnet_name = module.network_aks.vnet_name
  remote_virtual_network_id = module.network_infrastructure.vnet_id
}

module "network_peering_infra_to_aks" {
 source                  = "../modules/network-peering"
  resource_group_name     = var.resource_group_name
  environment_tag         = var.environment_tag
  name = "infra-to-aks"
  vnet_name = module.network_infrastructure.vnet_name
  remote_virtual_network_id = module.network_aks.vnet_id 
}

module "private_dns" {
  source                        = "../modules/private_dns"
  azurerm_private_dns_zone_name = var.azurerm_private_dns_zone_name
  resource_group_name           = var.resource_group_name
  environment_tag               = var.environment_tag
  virtual_network_link = {
    dev-infra = module.network_infrastructure.vnet_id
    dev-aks = module.network_aks.vnet_id
  }
  depends_on = [azurerm_resource_group.group,
                module.network_infrastructure,
                module.network_aks]
}

module "postgresql" {
  source               = "../modules/postgresql"
  resource_group_name  = var.resource_group_name
  environment_tag      = var.environment_tag
  database_server_name = var.database_server_name
  database_name        = var.database_name
  sku_name             = var.postgres_sku_name
  admin_username       = var.admin_username
  admin_password       = var.admin_password
  storage_mb           = var.storage_mb
  depends_on           = [azurerm_resource_group.group]
}

module "redis" {
  source              = "../modules/redis"
  resource_group_name = var.resource_group_name
  environment_tag     = var.environment_tag
  cache_name          = var.cache_name
  capacity            = var.cache_capacity
  family              = var.cache_family
  sku_name            = var.redis_sku_name
  depends_on          = [azurerm_resource_group.group]
}

module "storage" {
  source              = "../modules/storage"
  resource_group_name = var.resource_group_name
  environment_tag     = var.environment_tag
  storage_name        = var.storage_name
  depends_on          = [azurerm_resource_group.group]
}

module "private_endpoint" {
  source                          = "../modules/private_endpoint"
  resource_group_name             = var.resource_group_name
  environment_tag                 = var.environment_tag
  private_endpoint_name           = var.private_endpoint_name
  subnet_id                       = module.network_infrastructure.subnet_id
  private_dns_zone_group_name     = var.private_dns_zone_group_name
  private_dns_zone_ids            = [module.private_dns.id]
  private_service_connection_name = var.private_service_connection_name
  private_connection_resource_id  = module.postgresql.server_id
  depends_on                      = [azurerm_resource_group.group]
}

module "private_postgresql_dns_record" {
  source                    = "../modules/private_dns_record"
  resource_group_name       = var.resource_group_name
  environment_tag           = var.environment_tag
  private_dns_record_a_name = var.private_dns_record_a_name_psql
  private_dns_zone_name     = module.private_dns.name
  records                   = [module.private_endpoint.ip_address]
  depends_on                = [azurerm_resource_group.group]
}

module "aks" {
  source              = "../modules/aks"
  resource_group_name = var.resource_group_name
  environment_tag     = var.environment_tag
  cluster_name        = var.cluster_name
  vm_size             = var.vm_size
  node_pool_name      = var.node_pool_name
  subnet_id           = module.network_aks.subnet_id
  service_cidr        = var.aks_service_cidr
  dns_service_ip      = var.aks_dns_service_ip
  docker_bridge_cidr  = var.aks_docker_bridge_cidr
  pod_cidr            = var.aks_pod_cidr
  depends_on          = [azurerm_resource_group.group]
}


