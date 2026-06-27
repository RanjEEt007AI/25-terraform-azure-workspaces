resource "azurerm_resource_group" "ranjeet-rg" {
  name     = "rg-${terraform.workspace}"
  location = "Central India"
}

resource "azurerm_storage_account" "storage" {
  name                     = "storage${terraform.workspace}12345"
  resource_group_name      = azurerm_resource_group.ranjeet-rg.name
  location                 = azurerm_resource_group.ranjeet-rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
