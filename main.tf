module "infrastructure" {
  source              = "./environments"
  resource_group_name = "terraform-env"
  location            = "Central US"
  environment_tag     = "dev"
  ############## Network configuration ###############
  ####################################################
  infra_subnet_address_space      = "192.0.0.0/8"
  aks_subnet_address_space        = "191.0.0.0/8"
  azurerm_private_dns_zone_name   = "private.azure.com"
  private_endpoint_name           = "psql-private-dev"
  private_dns_zone_group_name     = "private-dns-zone-group-dev"
  private_service_connection_name = "private-service-connection-dev"
  private_dns_record_a_name_psql  = "psql"
  ############# Database configuration ###############
  ####################################################
  database_server_name = "postgresql-dev-server"
  database_name        = "db-dev"
  postgres_sku_name    = "GP_Gen5_2"
  admin_username       = "terraform"
  ## Should use env TF_VAR_admin_password 
  ## to provide password when
  ## run provision infrastructure
  admin_password = "Terra@F0rm!"
  storage_mb     = 256000
  ############# Redis configuration ##################
  ####################################################  
  cache_name     = "terrafrom-redis-cache-dev"
  cache_capacity = 1
  cache_family   = "C"
  redis_sku_name = "Basic"
  storage_name   = "terrafromstorage"
  ############# AKS configuration ####################
  ####################################################    
  cluster_name           = "k8s-cluster"
  vm_size                = "Standard_D2_v3"
  node_pool_name         = "devpool1"
  aks_dns_service_ip     = "10.0.0.10"
  aks_docker_bridge_cidr = "172.0.0.1/8"
  aks_pod_cidr           = null
  aks_service_cidr       = "10.0.0.0/16"
}
