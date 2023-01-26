resource "azurerm_resource_group" "azureinfra_rg" {
  name     = "azure-infra-rg"
  location = "West Europe"
}

resource "azurerm_app_service_plan" "cicd_app" {
  name                = "cicd-app-service"
  location            = "West Europe"
  kind                = "Linux"
  reserved            = true
  resource_group_name = azurerm_resource_group.azureinfra_rg.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}