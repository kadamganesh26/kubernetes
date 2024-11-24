module "rg" {
    source = "../../modules/azurerm_resource_group"
    rg = var.dev-rg
}

module "acr" {
    depends_on = [ module.rg ]
    source = "../../modules/azurerm-acr"
    acr_clusters = var.dev-acr
}

module "aks" {
depends_on = [ module.rg, module.acr]
source = "../../modules/azurerm-aks"
aks_clusters= var.dev-aks
}