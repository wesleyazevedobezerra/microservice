terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.23.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "33a2a090-cf88-471c-a356-6c86f7ed9a6e"
}


resource "azurerm_resource_group" "resource-group" {
  name     = "rg-terraform"
  location = var.location
  tags     = var.tags
}
