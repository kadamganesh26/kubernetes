variable "acr" {
  description = "A map of acr clusters, each containing details for the acr resource group and the cluster itself"
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    sku                 = string
    admin_enabled       = bool
  }))
}
