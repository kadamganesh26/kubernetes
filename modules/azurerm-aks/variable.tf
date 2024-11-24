variable "aks_clusters" {
  description = "A map of AKS cluster configurations."
  type = map(object({
    aks_rg_name         = string   # Name of the resource group for the AKS cluster
    aks_location        = string   # Location for the AKS cluster
    aks_name            = string   # Name of the AKS cluster
    resource_group_name = string   # Name of the resource group for the AKS cluster
    dns_prefix          = string   # DNS prefix for the AKS cluster
    node_count          = number   # Number of nodes in the default node pool
    vm_size             = string   # VM size for the default node pool
    tags                = string   # Tags for the AKS cluster
  }))
}