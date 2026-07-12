variable "containers" {}

resource "azurerm_storage_container" "containers" {
  for_each = var.containers
  name = each.value.name
  storage_account_name = each.value.storage_account_name

}