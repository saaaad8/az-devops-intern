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

resource "azurerm_service_plan" "app_service_plan" {
  name                = var.app_service_plan_name
  resource_group_name = azurerm_resource_group.acr-resource-group.name
  location            = azurerm_resource_group.acr-resource-group.location
  sku_name            = var.app_service_plan_sku
  os_type             = "Linux"
}

resource "azurerm_linux_web_app" "web_app" {
  name                = var.web_app_name
  resource_group_name = azurerm_resource_group.acr-resource-group.name
  location            = azurerm_resource_group.acr-resource-group.location
  service_plan_id     = azurerm_service_plan.app_service_plan.id

  site_config {
    application_stack {
      node_version = "18-lts"
    }
  }
}