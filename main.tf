provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

resource "azurerm_resource_group" "acr-resource-group" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = azurerm_resource_group.acr-resource-group.name
  location            = azurerm_resource_group.acr-resource-group.location
  sku                 = var.acr_sku
  admin_enabled       = true
}