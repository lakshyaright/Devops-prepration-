module "resource_gorups" {
  source = "../modules/resource_group"
  rgs    = var.rgs
}

module "virtual_networks" {
  depends_on = [ module.resource_gorups ]
  source = "../modules/virtual_networks"
  vnets  = var.vnets
}

module "subnets" {
  depends_on = [ module.virtual_networks ]
  source  = "../modules/subnets"
  subnets = var.subnets
}

module "network_interfaces" {
  depends_on = [ module.subnets ]
  source = "../modules/network_interface"
  nics   = var.nics
}

module "virtual_machines" {
  depends_on = [ module.network_interfaces ]
  source = "../modules/virtual_machine"
  vms    = var.vms
}

module "str" {
  source = "../modules/storageaccount"
  str = var.str
}

module "storage_container" {
  source = "../modules/containers"
storage_container = var.storage_container 
}