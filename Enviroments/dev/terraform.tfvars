dev-rg={
    name = "dev_app_rg_westus"
    location = "westus"
}

dev-acr={
    name = "dev_app_acr_westus"
  resource_group_name = "dev_app_rg_westus"
  location            = "westus"
  sku                 = "Premium"
  admin_enabled       = "false"
 geo_replications = [
      {
        location                = "East US"
        zone_redundancy_enabled = true
        tags                    = { environment = "development", owner = "dev-team" }
      },
      {
        location                = "North Europe"
        zone_redundancy_enabled = true
        tags                    = { environment = "development", owner = "dev-team" }
      }
    ]
  }
