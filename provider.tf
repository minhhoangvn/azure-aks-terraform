provider "azurerm" {
  version = "=2.25.0"
  features {}
}

provider "helm" {
  version = "=1.2.4"
  kubernetes {
    host                   = azurerm_kubernetes_cluster.k8s.kube_config.0.host
    username               = azurerm_kubernetes_cluster.k8s.kube_config.0.username
    password               = azurerm_kubernetes_cluster.k8s.kube_config.0.password
    client_certificate     = base64decode(azurerm_kubernetes_cluster.k8s.kube_config.0.client_certificate)
    client_key             = base64decode(azurerm_kubernetes_cluster.k8s.kube_config.0.client_key)
    cluster_ca_certificate = base64decode(azurerm_kubernetes_cluster.k8s.kube_config.0.cluster_ca_certificate)
  }
}
