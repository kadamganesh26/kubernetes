#AKS Resource Group BlOCK
resource "azurerm_resource_group" "aks_rg_blk" {
    for_each = var.aks_clusters
  name     = each.value.aks_rg_name
  location = each.value.aks_location
}

#AKS details bock
resource "azurerm_kubernetes_cluster" "example" {
  for_each = var.aks_clusters
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
network_profile {
  network_plugin = "azure"
  network_policy = "calico"
}

  tags = {
    Environment = each.value.tags
  }
}
