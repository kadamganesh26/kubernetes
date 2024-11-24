variable "acr_clusters" {
  description = "A map of acr clusters, each containing details for the acr resource group and the cluster itself"
  type = map(object({
    acr_rg_name        = string
    acr_location       = string
    acr_name           = string
    resource_group_name = string
    dns_prefix         = string
    node_count         = number
    vm_size            = string
    tags               = string
  }))
}

variable "" {
  
}