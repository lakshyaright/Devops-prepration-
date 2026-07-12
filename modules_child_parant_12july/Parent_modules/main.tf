module "rgs" {
  source = "../child_modules/azurerm_resource_group"
  rgs = var.rgs
}
module "storage" {
    depends_on = [ module.rgs ]
  source = "../child_modules/azurerm_storage_account"
  storages = var.storages
}

module "containers" {
    depends_on = [module.storage  ]
  source = "../child_modules/azurerm_storage_container"
  containers = var.containers
}

module "vnets" {
    depends_on = [ module.rgs ]
  source = "../child_modules/azurerm_virtual_network"
  vnets = var.vnets
}



module "subnets" {
    depends_on = [ module.vnets ]
  source = "../child_modules/azurerm_network_subnet"
  subnet = var.subnet
}

