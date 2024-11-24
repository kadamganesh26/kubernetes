module "rg" {
    source = "../../modules/azurerm_resource_group"
    rg = var.dev-rg
}

module "acr" {
    depends_on = [ module.rg ]
    source = "../../modules/azurerm-acr"
    acr_clusters = var.dev-acr
    geo_replications= var.dev-acr-geo_replications
  
}