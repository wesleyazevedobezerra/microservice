


resource "azurerm_resource_group" "resource-group" {
  name     = "rg-terraform"
  location = var.location
  tags     = var.tags
}
