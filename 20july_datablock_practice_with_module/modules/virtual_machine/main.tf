resource "azurerm_linux_virtual_machine" "example" {
  for_each = var.vms
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  size                = each.value.vm_size
  admin_username      = each.value.admin_username
  admin_password      = each.value.admin_password
  disable_password_authentication = each.value.disable_password_authentication

  network_interface_ids = [
    "/subscriptions/ef72840d-82bf-473c-a6d3-6071256e8393/resourceGroups/SProd_rg/providers/Microsoft.Network/networkInterfaces/frontendnic"
  ]


  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }
}