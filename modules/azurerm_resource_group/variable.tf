variable "rg" {
     description = "A map of acr clusters, each containing details for the acr resource group and the cluster itself"
  type = map(object({
    name        = string
    location       = string
    tags               = string
  }))
}
