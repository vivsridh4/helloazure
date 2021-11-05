resource "azurerm_resource_group" "rg" {
  name     = "helloazure-tf"
  location = "Central US"
}

resource "azurerm_container_registry" "acr" {
  name                = "vickybytes"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku                 = "Standard"
  admin_enabled       = true
}