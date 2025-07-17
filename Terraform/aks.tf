resource "azurerm_kubernetes_cluster" "cluster" {
  name                = "aks-terraform"
  location            = var.location
  resource_group_name = azurerm_resource_group.resource-group.name
  dns_prefix          = "aks-terraform"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_B2s"
  }

  identity {
    type = "SystemAssigned"
  }
}

output "rg_name" {
  value = azurerm_resource_group.resource-group.name
}

output "aks_name" {
  value = azurerm_kubernetes_cluster.cluster.name
}
