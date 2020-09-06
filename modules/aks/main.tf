
resource "azurerm_kubernetes_cluster" "k8s" {
  name                = var.cluster_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix
  kubernetes_version  = var.kubernetes_version

  default_node_pool {
    name           = var.node_pool_name
    node_count     = var.k8s_node
    vm_size        = var.vm_size
    vnet_subnet_id = var.subnet_id
  }

  network_profile {
    network_plugin     = var.network_plugin
    network_policy     = var.network_plugin
    dns_service_ip     = var.dns_service_ip
    docker_bridge_cidr = var.docker_bridge_cidr
    pod_cidr           = var.pod_cidr
    service_cidr       = var.service_cidr
  }

  identity {
    type = var.identity
  }

  tags = {
    Environment = var.environment_tag
  }
}
