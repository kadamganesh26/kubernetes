variable "aks_clusters" {
  description = "A map of AKS clusters, each containing details for the AKS resource group and the cluster itself"
  type = map(object({
    aks_rg_name        = string
    aks_location       = string
    aks_name           = string
    resource_group_name = string
    dns_prefix         = string
    node_count         = number
    vm_size            = string
    tags               = string
  }))
}