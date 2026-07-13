resource "azurerm_resource_group" "rgs" {
  name   = "rg-complate-overview"
    location = "East US"
}


resource "azurerm_storage_account" "sa" {
  name                     = "stcomplateoverview"
  resource_group_name      = azurerm_resource_group.rgs.name
  location                 = azurerm_resource_group.rgs.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}