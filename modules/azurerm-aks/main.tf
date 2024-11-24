#AKS Resource Group BlOCK
resource "azurerm_resource_group" "aks_rg_blk" {
    for_each = var.aks_clusters
  name     = each.value.aks_rg_name
  location = each.value.aks_location
}

#AKS details bock
resource "azurerm_kubernetes_cluster" "example" {
  name                = each.value.aks_name
  location            = each.value.aks_location
  resource_group_name = each.value.resource_group_name
  dns_prefix          = each.value.dns_prefix

  default_node_pool {
    name       = "default"
    node_count = each.value.node_count
    vm_size    = each.value.vm_size
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Devlopment"
  }
}

output "client_certificate" {
  value     = azurerm_kubernetes_cluster.example.kube_config[0].client_certificate
  sensitive = true
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.example.kube_config_raw

  sensitive = true
}
