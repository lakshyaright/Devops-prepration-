resource "azurerm_storage_container" "statecontaier" {
  for_each = var.storage_container
  name                  = each.value.name
  storage_account_name  = each.value.storage_account_name

}