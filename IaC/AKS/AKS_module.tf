############# AKS Resources ######################
resource "azurerm_kubernetes_cluster" "AKS-P1" {
    name = var.aks_cluster_name
    location = var.aks_location
    resource_group_name = var.aks_rg_name
    dns_prefix = var.aks_dns_prefix
    default_node_pool {
      name = var.node_name
      node_count = var.node_cnt
      vm_size = var.aks_node_vmsize
    }
    identity {
      type = "SystemAssigned"
    }
  tags = {
    "Environment" = var.aks_env_tag
  }
}

################ Output Resources ##############
output "client_certificate" {
  value = azurerm_kubernetes_cluster.AKS-P1.kube_config.0.client_certificate
}

output "kube_config" {
    value = azurerm_kubernetes_cluster.AKS-P1.kube_config_raw
}