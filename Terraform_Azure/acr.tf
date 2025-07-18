resource "azurerm_container_registry" "acr" {
  name                = "resourceintex" # esse nome deve ser único globalmente!
  resource_group_name = azurerm_resource_group.resource-group.name
  location            = var.location
  sku                 = "Basic"
  admin_enabled       = false # você usará login com o Service Principal
  tags                = var.tags
}

output "acr_login_server" {
  value = azurerm_container_registry.acr.login_server
}