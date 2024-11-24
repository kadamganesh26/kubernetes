dev_rg = {
  rg1 = {
    name     = "dev_app_rg_westus"
    location = "East US"
    tags     = {
      Environment = "Development"
      Owner       = "dev-team"
    }
  }
}
dev_acr = {
  acr1={
  name                = "devappacrwestus"
  resource_group_name = "dev_app_rg_westus"
  location            = "westus"
  sku                 = "Premium"
  admin_enabled       = "true"
}
}

dev_aks = {
  cluster1 = {
    aks_rg_name         = "dev_app_rg_westus"
    aks_location        = "westus"
    aks_name            = "todo-appaks"
    resource_group_name = "dev_app_rg_westus"
    dns_prefix          = "cluster1dns"
    node_count          = 1
    vm_size             = "Standard_DS2_v2"
    tags                = "Development"
  }
}
