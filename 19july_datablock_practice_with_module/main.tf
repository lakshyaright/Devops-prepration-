module "resource_gorups" {
  source = "./resource_group"
  rgs    = var.rgs
}

module "virtual_networks" {
  depends_on = [ module.resource_gorups ]
  source = "./virtual_networks"
  vnets  = var.vnets
}

module "subnets" {
  depends_on = [ module.virtual_networks ]
  source  = "./subnets"
  subnets = var.subnets
}

module "network_interfaces" {
  depends_on = [ module.subnets ]
  source = "./network_interface"
  nics   = var.nics
}

module "virtual_machines" {
  depends_on = [ module.network_interfaces ]
  source = "./virtual_machine"
  vms    = var.vms
}