#Resource Group Block for the Azure Container Registory
resource "azurerm_resource_group" "acr-rg" {
  for_each = var.child_rg
  name     = each.value.name
  location = each.value.location
  tags = each.value.tags
}
