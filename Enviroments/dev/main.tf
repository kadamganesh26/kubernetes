module "rg" {
  source   = "../../modules/azurerm_resource_group"
  child_rg = var.dev_rg
}

module "acr" {
  depends_on = [module.rg]
  source     = "../../modules/azurerm-acr"
  acr        = var.dev_acr
}

module "aks" {
  depends_on   = [module.rg, module.acr]
  source       = "../../modules/azurerm-aks"
  aks_clusters = var.dev_aks
}
